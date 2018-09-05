<?php
if (!defined('ABSPATH')) {
    exit; // Exit if accessed directly
}

final class WOOBE_FILTERS extends WOOBE_EXT {

    protected $slug = 'filters'; //unique

    public function __construct() {
        load_plugin_textdomain('woo-bulk-editor', false, 'woo-bulk-editor/languages');
        
        add_action('woobe_ext_scripts', array($this, 'woobe_ext_scripts'), 1);

        //ajax
        add_action('wp_ajax_woobe_filter_products', array($this, 'woobe_filter_products'), 1);
        add_action('wp_ajax_woobe_reset_filter', array($this, 'woobe_reset_filter'), 1);

        //hooks
        add_filter('woobe_print_plugin_options', array($this, 'woobe_print_plugin_options'), 1);
        add_filter('woobe_apply_query_filter_data', array($this, 'woobe_apply_query_filter_data'));

        //tabs
        $this->add_tab($this->slug, 'top_panel', __('Filters', 'woo-bulk-editor'));
        add_action('woobe_ext_top_panel_' . $this->slug, array($this, 'woobe_ext_panel'), 1);
    }

    public function woobe_ext_scripts() {
        wp_enqueue_script('woobe_ext_' . $this->slug, $this->get_ext_link() . 'assets/js/' . $this->slug . '.js');
        ?>
        <script>
            lang.<?php echo $this->slug ?> = {};
            lang.<?php echo $this->slug ?>.filtering = "<?php echo __('Filtering', 'woo-bulk-editor') ?> ...";
            lang.<?php echo $this->slug ?>.filtered = "<?php echo __('Filtered! Table redrawing ...', 'woo-bulk-editor') ?>";
        </script>
        <?php
    }

    public function woobe_ext_panel() {
        $data = array();
        echo WOOBE_HELPER::render_html($this->get_ext_path() . 'views/panel.php', $data);
    }

    //ajax
    public function woobe_filter_products() {
        if (!current_user_can('manage_woocommerce')) {
            die('0');
        }

        $filter_data = array();
        parse_str($_REQUEST['filter_data'], $filter_data);
        $this->storage->set_val('woobe_filter_' . $_REQUEST['filter_current_key'], $filter_data['woobe_filter']);
        die('done');
    }

    //ajax
    public function woobe_reset_filter() {
        if (!current_user_can('manage_woocommerce')) {
            die('0');
        }

        $this->reset_filter_storage_data($_REQUEST['filter_current_key']);
        die('done');
    }

    //hook
    public function woobe_print_plugin_options($args) {
        //reset all filters
        //$this->reset_filter_storage_data();//system changed for using $filter_current_key and we not need it here
        return $args;
    }

    public function reset_filter_storage_data($filter_current_key) {
        //$this->storage->unset_val('woobe_filter_' . get_current_user_id());
        $this->storage->unset_val('woobe_filter_' . $filter_current_key);
    }

    public function posts_txt_where($where = '') {

        $txt_where_sql = "";

        if (!empty($_REQUEST['woobe_txt_search'])) {
            foreach ($_REQUEST['woobe_txt_search'] as $skey => $svalue) {

                if (empty($svalue)) {
                    continue;
                }

                $behavior = $_REQUEST['woobe_txt_search_behavior'][$skey];
                $woobe_text = wp_specialchars_decode(trim(urldecode($svalue)));

                //***

                if (empty($woobe_text)) {
                    return $where;
                }

                //***

                $woobe_text = trim(WOOBE_HELPER::strtolower($woobe_text));
                $woobe_text = preg_replace('/\s+/', ' ', $woobe_text);
                //$woobe_text = preg_quote($woobe_text, '&');
                //$woobe_text = str_replace(' ', '?(.*)', $woobe_text);
                $woobe_text = str_replace("\&#039;", "\'", $woobe_text);

                //http://dev.mysql.com/doc/refman/5.7/en/regexp.html
                //***

                $search_by_full_word = FALSE; //OPTION!!

                if ($search_by_full_word) {
                    $woobe_text = '[[:<:]]' . $woobe_text . '[[:>:]]';
                }

                //***

                switch ($behavior) {
                    case 'exact':
                        $text_where = "  LOWER({$skey}) = '__WOOBE_TEXT__'";
                        break;

                    case 'not':
                        $text_where = "  LOWER({$skey}) NOT REGEXP '__WOOBE_TEXT__'";
                        break;

                    case 'begin':
                        $text_where = "  LOWER({$skey}) REGEXP '^__WOOBE_TEXT__'";
                        break;

                    case 'end':
                        $text_where = "  LOWER({$skey}) REGEXP '__WOOBE_TEXT__$'";
                        break;

                    default:
                        //like
                        $text_where = "  LOWER({$skey}) REGEXP '__WOOBE_TEXT__'";
                        break;
                }

                //***

                if (substr_count($woobe_text, '^') > 0) {
                    $woobe_text = explode('^', $woobe_text);
                    $sql_tpl = '(';

                    //***
                    $not_been_not = 0; //for operation (!) at the end
                    foreach ($woobe_text as $st) {
                        $sql = $text_where;
                        $cond = 'OR';
                        if ($behavior == 'like') {
                            if ($st{0} == '!') {
                                $st = substr($st, 1);
                                $sql = str_replace('REGEXP', 'NOT REGEXP', $sql);

                                if (!$not_been_not) {
                                    $cond = ') AND (';
                                } else {
                                    $cond = 'AND';
                                }
                                $not_been_not += 1;
                            }
                        }

                        //***

                        $tmp = $cond . ' ' . (str_replace('__WOOBE_TEXT__', $st, $sql)) . ' ';
                        $sql_tpl .= $tmp;
                    }

                    //***

                    $sql_tpl = str_replace('(OR', '', $sql_tpl);
                    $sql_tpl = trim($sql_tpl, ' OR');
                    $sql_tpl = trim($sql_tpl, ' AND');

                    $text_where = $sql_tpl;
                } else {
                    $sql = $text_where;
                    $st = $woobe_text;
                    $text_where = str_replace('__WOOBE_TEXT__', $st, $sql);
                }

                //***

                $txt_where_sql .= ($text_where . ' AND ');
            }

            //***

            $txt_where_sql = trim($txt_where_sql, ' AND');
            $where .= " AND ( " . $txt_where_sql . " ) ";
        }

        //***
        //echo $where;
        return $where;
    }

    public function posts_sku_where($where = '') {
        global $wpdb;
        $sku_where = "";

        $woobe_sku_request = explode(',', $_REQUEST['woobe_sku_search']);
        $woobe_sku_request = array_map('urldecode', $woobe_sku_request);
        $woobe_sku_request = array_map('trim', $woobe_sku_request);
        //***

        $sku_logic = $_REQUEST['woobe_sku_search_behavior'];

        $condtion_string = "";
        if (!empty($woobe_sku_request)) {
            foreach ($woobe_sku_request as $k => $sku) {
                switch ($sku_logic) {
                    case 'exact':
                        $condtion_string .= "postmeta.meta_value = '$sku'";
                        $condtion_string .= " OR ";
                        break;

                    case 'not':
                        $condtion_string .= "postmeta.meta_value NOT LIKE '%$sku%'";
                        $condtion_string .= " AND ";
                        break;

                    case 'begin':
                        $condtion_string .= "postmeta.meta_value LIKE '$sku%'";
                        $condtion_string .= " OR ";
                        break;

                    case 'end':
                        $condtion_string .= "postmeta.meta_value LIKE '%$sku'";
                        $condtion_string .= " OR ";
                        break;

                    default:
                        //like
                        $condtion_string .= "postmeta.meta_value LIKE '%$sku%'";
                        $condtion_string .= " OR ";
                        break;
                }
            }
        }

        //***
        $condtion_string = trim($condtion_string, 'OR ');
        $condtion_string = trim($condtion_string, 'AND ');

        //***

        $product_variations = $wpdb->get_results("
                    SELECT posts.ID
                    FROM $wpdb->posts AS posts
                    LEFT JOIN $wpdb->postmeta AS postmeta ON ( posts.ID = postmeta.post_id )
                    WHERE posts.post_type IN ('product','product_variation')
                    AND postmeta.meta_key = '_sku'
                    AND ($condtion_string)", ARRAY_N);
        //+++
        $product_variations_ids = array();
        if (!empty($product_variations)) {
            foreach ($product_variations as $v) {
                $product_variations_ids[] = $v[0];
            }

            //+++
            $product_variations_ids_string = implode(',', $product_variations_ids);

            $products = $wpdb->get_results("
                        SELECT posts.post_parent
                        FROM $wpdb->posts AS posts
                        WHERE posts.ID IN ($product_variations_ids_string) AND posts.post_parent > 0", ARRAY_N);
            //+++
            $product_ids = array();
            if (!empty($products)) {
                foreach ($products as $v) {
                    $product_ids[] = $v[0];
                }
            }
            $product_ids = implode(',', array_merge($product_ids, $product_variations_ids));
            $sku_where .= " $wpdb->posts.ID IN($product_ids)";
            $where_sku = " AND $wpdb->posts.ID IN($product_ids)";
        }


        //***

        $where .= " AND ( " . $sku_where . " )";

        //***
//echo $where;
        return $where;
    }

    //https://gist.github.com/marteinn/1069123
    public function woobe_post_date_from_to($where = '') {

        if ($_REQUEST['woobe_post_date_from']) {
            $where .= " AND post_date >= '{$_REQUEST['woobe_post_date_from']}'";
        }

        if ($_REQUEST['woobe_post_date_to']) {
            $where .= " AND post_date <= '{$_REQUEST['woobe_post_date_to']}'";
        }

        return $where;
    }

    public function woobe_menu_order_to($where = '') {

        if ($_REQUEST['woobe_menu_order_from']) {
            $where .= " AND menu_order >= '{$_REQUEST['woobe_menu_order_from']}'";
        }

        if ($_REQUEST['woobe_menu_order_to']) {
            $where .= " AND menu_order <= '{$_REQUEST['woobe_menu_order_to']}'";
        }

        return $where;
    }

    //hook
    public function woobe_apply_query_filter_data($args) {


        $woobe_filter = array();

        if (isset($_REQUEST['filter_current_key']) AND ! empty($_REQUEST['filter_current_key'])) {
            $woobe_filter = $this->storage->get_val('woobe_filter_' . $_REQUEST['filter_current_key']);
        }

        $fields = $this->settings->get_fields(false);

        $tax_query = array();
        $meta_query = array();

        if (!empty($woobe_filter)) {

            if (isset($woobe_filter['taxonomies']) AND ! empty($woobe_filter['taxonomies'])) {
                foreach ($woobe_filter['taxonomies'] as $tax_key => $terms_ids) {
                    $operator = $woobe_filter['taxonomies_operators'][$tax_key];

                    if ($operator === 'AND') {
                        //https://wordpress.stackexchange.com/questions/236902/wordpress-tax-query-and-operator-not-functioning-as-desired
                        //when to set operatot to AND - no results
                        foreach ($terms_ids as $tid) {
                            $tax_query[] = array(
                                'taxonomy' => $tax_key,
                                'field' => 'term_id',
                                'terms' => $tid
                            );
                        }
                    } else {
                        $q = array(
                            'taxonomy' => $tax_key,
                            'field' => 'term_id', //term_id, slug
                            'terms' => $terms_ids
                        );

                        //if ($woobe_filter['taxonomies_operators'][$tax_key] != 'OR') {
                        $q['operator'] = $woobe_filter['taxonomies_operators'][$tax_key]; //OR, NOT IN
                        //}

                        $tax_query[] = $q;
                    }
                }
            }

            //***
            //meta keys by which allowed filtering
            $number_keys = array();
            $string_keys = array();


            foreach ($fields as $k => $f) {
                if (isset($woobe_filter[$k]) AND ! empty($woobe_filter[$k]) AND isset($f['meta_key'])) {
                    if (in_array($f['type'], array('number', 'timestamp', 'unix'))) {
                        $number_keys[] = $k;
                    } else {
                        $string_keys[] = $k;
                    }
                }
            }

            //***

            if (!empty($number_keys)) {
                foreach ($number_keys as $key) {
                    if (isset($woobe_filter[$key])) {

                        $meta_key = $fields[$key]['meta_key'];

                        if (isset($woobe_filter[$key]) AND ! empty($woobe_filter[$key])) {

                            if (in_array($fields[$key]['type'], array('number', 'unix'))) {
                                $from = floatval(str_replace(',', '.', $woobe_filter[$key]['from']));
                                $to = floatval(str_replace(',', '.', $woobe_filter[$key]['to']));

                                //***

                                if (intval($from) == 0 AND intval($to) == 0) {
                                    continue; //nothing to select
                                }

                                //***

                                if ($from < $to) {
                                    //https://dev.mysql.com/doc/refman/5.7/en/precision-math-decimal-characteristics.html
                                    $meta_query[] = array(
                                        'key' => $meta_key,
                                        'value' => array($from, $to),
                                        //if to simply set DECIMAL without range - wrong range of data will be found, for example if to search from 100 to 150 will be found range 99.xx - 150!
                                        'type' => 'DECIMAL(30,20)',
                                        'compare' => 'BETWEEN'
                                    );
                                } elseif ($from > $to) {
                                    $meta_query[] = array(
                                        'key' => $meta_key,
                                        'value' => $from,
                                        'type' => 'DECIMAL(30,20)',
                                        'compare' => '>='
                                    );
                                } else {
                                    //$from == $to
                                    $meta_query[] = array(
                                        'key' => $meta_key,
                                        'value' => $from,
                                        'type' => 'DECIMAL(30,20)',
                                        'compare' => '='
                                    );
                                }
                            }
                        }

                        //+++

                        if (in_array($fields[$key]['type'], array('timestamp'))) {
                            //timestamp - Sale price from & Sale price to

                            static $calendar_filter_inited = false; //flag

                            if (!$calendar_filter_inited) {

                                if (isset($woobe_filter['date_on_sale_from'])) {
                                    $date_on_sale_from = intval(strtotime($woobe_filter['date_on_sale_from']));
                                } else {
                                    $date_on_sale_from = 0;
                                }

                                if (isset($woobe_filter['date_on_sale_to'])) {
                                    $date_on_sale_to = intval(strtotime($woobe_filter['date_on_sale_to']));
                                } else {
                                    $date_on_sale_to = 0;
                                }

                                //***

                                if (intval($date_on_sale_from) === 0 AND intval($date_on_sale_to) === 0) {
                                    continue; //nothing to select
                                }

                                if ($date_on_sale_from > 0 AND $date_on_sale_to === 0) {
                                    $meta_query[] = array(
                                        'key' => $fields['date_on_sale_from']['meta_key'],
                                        'value' => $date_on_sale_from,
                                        'type' => 'NUMERIC',
                                        'compare' => '>='
                                    );
                                } elseif ($date_on_sale_from === 0 AND $date_on_sale_to > 0) {
                                    $meta_query[] = array(
                                        'key' => $fields['date_on_sale_to']['meta_key'],
                                        'value' => $date_on_sale_to/* + 3600 * 24 */,
                                        'type' => 'NUMERIC',
                                        'compare' => '<='
                                    );
                                    $meta_query[] = array(
                                        'key' => $fields['date_on_sale_to']['meta_key'],
                                        'value' => 0,
                                        'type' => 'NUMERIC',
                                        'compare' => '>'
                                    );
                                } else {
                                    //$date_on_sale_from > 0 AND $date_on_sale_to > 0

                                    $meta_query[] = array(
                                        'key' => $fields['date_on_sale_from']['meta_key'],
                                        'value' => array($date_on_sale_from, $date_on_sale_to),
                                        'type' => 'NUMERIC',
                                        'compare' => 'BETWEEN'
                                    );

                                    $meta_query[] = array(
                                        'key' => $fields['date_on_sale_to']['meta_key'],
                                        'value' => array($date_on_sale_from, $date_on_sale_to),
                                        'type' => 'NUMERIC',
                                        'compare' => 'BETWEEN'
                                    );
                                }

                                $calendar_filter_inited = true;
                            }
                        }
                    }
                }
            }

            //***
            //for string meta keys
            if (!empty($string_keys)) {
                foreach ($string_keys as $string_key) {

                    if ($string_key === 'sku') {
                        //sku has its own filter-hook below
                        continue;
                    }

                    //***
                    $is = true;

                    if (isset($woobe_filter[$string_key]['value'])) {
                        if (intval($woobe_filter[$string_key]['value']) === -1 OR strlen($woobe_filter[$string_key]['value']) === 0) {
                            $is = false;
                        }
                    } else {
                        if (intval($woobe_filter[$string_key]) === -1 OR strlen($woobe_filter[$string_key]) === 0) {
                            $is = false;
                        }
                    }


                    /*
                      if (is_numeric($woobe_filter[$string_key])) {
                      if (intval($woobe_filter[$string_key]) > 0) {
                      $is = true;
                      }
                      } else {
                      if (!empty($woobe_filter[$string_key]['value'])) {
                      $is = true;
                      }
                      }
                     */
                    //+++

                    if ($is) {
                        if ($woobe_filter[$string_key] === 'zero') {
                            //fix for metafields of type switcher added in WOOBE extension
                            $meta_query[] = array(
                                'key' => $fields[$string_key]['meta_key'],
                                'value' => 0,
                                'type' => 'DECIMAL',
                                'compare' => isset($woobe_filter[$string_key]['behavior']) ? $woobe_filter[$string_key]['behavior'] : '='
                            );
                        } else {
                            $meta_query[] = array(
                                'key' => $fields[$string_key]['meta_key'],
                                'value' => isset($woobe_filter[$string_key]['value']) ? $woobe_filter[$string_key]['value'] : $woobe_filter[$string_key],
                                'type' => 'CHAR',
                                'compare' => isset($woobe_filter[$string_key]['behavior']) ? $woobe_filter[$string_key]['behavior'] : '='
                            );
                        }

                        //***
                        //fix to exclude products where stock_status not possible
                        if ($string_key === 'stock_status') {
                            $tax_query[] = array(
                                'taxonomy' => 'product_type',
                                'field' => 'slug', //id, slug
                                'terms' => $fields['stock_status']['allow_product_types']
                            );
                        }
                    }
                }
            }
        }

        //***
        /*
          $order_by = $this->storage->get_val('woobe_products_order_by');

          if (!empty($order_by)) {
          $args['orderby'] = $order_by;
          }
         */
        //***
        /*
          $order = $this->storage->get_val('woobe_products_order');

          if (!empty($order)) {
          $args['order'] = $order;
          }
         */
        //***
        $txt_search = array();
        $txt_search['post_title'] = isset($woobe_filter['post_title']);
        $txt_search['post_content'] = isset($woobe_filter['post_content']);
        $txt_search['post_excerpt'] = isset($woobe_filter['post_excerpt']);
        $txt_search['post_name'] = isset($woobe_filter['post_name']);

        $_REQUEST['woobe_txt_search'] = array();
        $_REQUEST['woobe_txt_search_behavior'] = array();
        foreach ($txt_search as $skey => $is) {
            if (!empty($woobe_filter[$skey]['value'])) {
                $_REQUEST['woobe_txt_search'][$skey] = $woobe_filter[$skey]['value'];
                $_REQUEST['woobe_txt_search_behavior'][$skey] = $woobe_filter[$skey]['behavior'];
            }
        }

        if (!empty($_REQUEST['woobe_txt_search'])) {
            add_filter('posts_where', array($this, 'posts_txt_where'), 101);
        }


        //***


        if (isset($woobe_filter['sku']) AND ! empty($woobe_filter['sku']['value'])) {
            $_REQUEST['woobe_sku_search'] = $woobe_filter['sku']['value'];
            $_REQUEST['woobe_sku_search_behavior'] = $woobe_filter['sku']['behavior'];
            add_filter('posts_where', array($this, 'posts_sku_where'), 102);
        }


        //***
        //if ordering is by meta key
        if (isset($fields[$args['orderby']]['meta_key']) AND ! empty($fields[$args['orderby']]['meta_key'])) {
            $args['meta_key'] = $fields[$args['orderby']]['meta_key'];
            if (in_array($fields[$args['orderby']]['type'], array('number', 'timestamp', 'unix'))) {
                $args['orderby'] = 'meta_value_num meta_value';
            } else {
                $args['orderby'] = 'meta_value';
            }
        }

        //***

        if (isset($woobe_filter['post__in']) AND ! empty($woobe_filter['post__in']['value'])) {

            $p_ids = array();
            $tmp = explode(',', $woobe_filter['post__in']['value']);
            //print_r($tmp);
            if (!empty($tmp)) {
                foreach ($tmp as $vv) {
                    if (substr_count($vv, '-') > 0) {
                        $vv = explode('-', trim($vv));
                        if (!empty($vv[0]) AND ! empty($vv[1])) {
                            if ($vv[0] !== $vv[1]) {
                                $start = $vv[0] < $vv[1] ? $vv[0] : $vv[1];
                                $finish = $vv[1] > $vv[0] ? $vv[1] : $vv[0];
                                while (true) {
                                    $p_ids[] = $start;
                                    $start++;
                                    if ($start > $finish) {
                                        break;
                                    }
                                }
                            }
                        }
                    } else {
                        $p_ids[] = intval($vv);
                    }
                }
            }

            $args['post__in'] = $p_ids;
        }

        //***
        //product_type
        if (isset($woobe_filter['product_type']) AND intval($woobe_filter['product_type']) !== -1) {
            $tax_query[] = array(
                'taxonomy' => 'product_type',
                'field' => 'slug', //id, slug
                'terms' => $woobe_filter['product_type']
            );
        }


        //featured
        if (isset($woobe_filter['featured']) AND intval($woobe_filter['featured']) !== -1) {
            $q = array(
                'taxonomy' => 'product_visibility',
                'field' => 'slug', //id, slug
                'terms' => 'featured'//1
            );

            //only not featured
            if (intval($woobe_filter['featured']) === 2) {
                $q['operator'] = 'NOT IN';
            }

            $tax_query[] = $q;
        }


        //backorders
        if (isset($woobe_filter['backorders']) AND intval($woobe_filter['backorders']) !== -1) {
            $q = array(
                'key' => '_backorders',
                'value' => $woobe_filter['backorders'],
                'compare' => '='
            );

            $meta_query[] = $q;
        }

        //post_date
        if ((isset($woobe_filter['post_date_from']) AND ! empty($woobe_filter['post_date_from']))
                OR ( isset($woobe_filter['post_date_to']) AND ! empty($woobe_filter['post_date_to']))) {
            $_REQUEST['woobe_post_date_from'] = isset($woobe_filter['post_date_from']) ? $woobe_filter['post_date_from'] : null;
            $_REQUEST['woobe_post_date_to'] = isset($woobe_filter['post_date_to']) ? $woobe_filter['post_date_to'] : null;
            add_filter('posts_where', array($this, 'woobe_post_date_from_to'), 103);
        }


        //menu_order
        if ((isset($woobe_filter['menu_order_from']) AND ! empty($woobe_filter['menu_order_from']))
                OR ( isset($woobe_filter['menu_order_to']) AND ! empty($woobe_filter['menu_order_to']))) {
            $_REQUEST['woobe_menu_order_from'] = isset($woobe_filter['menu_order_from']) ? $woobe_filter['menu_order_from'] : null;
            $_REQUEST['woobe_menu_order_to'] = isset($woobe_filter['menu_order_to']) ? $woobe_filter['menu_order_to'] : null;
            add_filter('posts_where', array($this, 'woobe_menu_order_to'), 104);
        }


        //post_status
        if (isset($woobe_filter['post_status']) AND intval($woobe_filter['post_status']) !== -1) {
            $args['post_status'] = array($woobe_filter['post_status']);
        }

        //***

        if (!empty($tax_query)) {
            $tax_query['relation'] = 'AND';
        }

        if (!empty($meta_query)) {
            $meta_query['relation'] = 'AND';
        }

        //***
        $args['tax_query'] = $tax_query;
        $args['meta_query'] = $meta_query;

        //print_r($args);
        return $args;
    }

}
