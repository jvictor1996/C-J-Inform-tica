<?php
/**
 * Template Name: Custom home
 */

get_header(); ?>

<div class="slider-category">
  <div class="container">
    <div class="row">
      <div class="col-md-3 col-sm-3">
        <div class="categry-title">
          <i class="fa fa-bars" aria-hidden="true"></i><span><?php echo esc_html_e('CATEGORIES','advance-ecommerce-store'); ?></span>
        </div>
        <?php if(class_exists('woocommerce')){ ?>
          <div class="product-category">
            <?php
              $args = array(
                //'number'     => $number,
                'orderby'    => 'title',
                'order'      => 'ASC',
                'hide_empty' => 0,
                'parent'  => 0
                //'include'    => $ids
              );
              $product_categories = get_terms( 'product_cat', $args );
              $count = count($product_categories);
              if ( $count > 0 ){
                  foreach ( $product_categories as $product_category ) {
                      $cat_id   = $product_category->term_id;
                    $cat_link = get_category_link( $cat_id );
                    $thumbnail_id = get_woocommerce_term_meta( $product_category->term_id, 'thumbnail_id', true ); // Get Category Thumbnail
                    $image = wp_get_attachment_url( $thumbnail_id );
                    if ($product_category->category_parent == 0) {
                      ?>
                   <li class="drp_dwn_menu"><a href="<?php echo esc_url(get_term_link( $product_category ) ); ?>">
                    <?php
                   if ( $image ) {
                  echo '<img class="thumd_img" src="' . esc_url( $image ) . '" alt="" />';
                }
                  echo esc_html( $product_category->name ); ?></a></li>
                   <?php
                  }
                }
              }
            ?>
          </div>
        <?php }else { echo '<h6>'.esc_html('Please Install Woocommerce Plugin','advance-ecommerce-storee').'<h6>'; }?>
      </div>
      <div class="col-md-9 col-sm-9">
        <div id="slider">
          <?php if( get_theme_mod( 'advance_ecommerce_store_slider_hide') != '') { ?>
          <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel"> 
            <?php $pages = array();
              for ( $count = 1; $count <= 3; $count++ ) {
                $mod = intval( get_theme_mod( 'advance_ecommerce_store_slider_page' . $count ));
                if ( 'page-none-selected' != $mod ) {
                  $pages[] = $mod;
                }
              }
              if( !empty($pages) ) :
                $args = array(
                  'post_type' => 'page',
                  'post__in' => $pages,
                  'orderby' => 'post__in'
                );
                $query = new WP_Query( $args );
                if ( $query->have_posts() ) :
                  $i = 1;
            ?>     
            <div class="carousel-inner" role="listbox">
              <?php  while ( $query->have_posts() ) : $query->the_post(); ?>
                <div <?php if($i == 1){echo 'class="carousel-item active"';} else{ echo 'class="carousel-item"';}?>>
                  <img src="<?php the_post_thumbnail_url('full'); ?>"/>
                  <div class="carousel-caption">
                    <div class="inner_carousel">
                      <h2><?php the_title(); ?></h2>
                      <hr class="slidehr">
                      <p><?php $excerpt = get_the_excerpt(); echo esc_html( advance_ecommerce_store_string_limit_words( $excerpt,20 ) ); ?></p>
                      <div class="more-btn">              
                        <a href="<?php the_permalink(); ?>"><?php esc_html_e('Read More','advance-ecommerce-store'); ?></a>
                      </div>
                    </div>
                  </div>
                </div>
              <?php $i++; endwhile; 
              wp_reset_postdata();?>
            </div>
            <?php else : ?>
                <div class="no-postfound"></div>
            <?php endif;
            endif;?>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"><i class="fas fa-chevron-left"></i></span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"><i class="fas fa-chevron-right"></i></span>
            </a>
          </div>
          <?php } ?>
          <div class="clearfix"></div>
        </div>
        <div class="product-service">
          <div class="row">
            <?php
              $page_query = new WP_Query(array( 'category_name' => esc_html(get_theme_mod('advance_ecommerce_store_product_service'),'theblog')));?>
              <?php while( $page_query->have_posts() ) : $page_query->the_post(); ?>                
                  <div class="col-md-4 col-sm-4">
                    <div class="service-border">
                      <a href="<?php the_permalink(); ?>"><h4><?php the_title(); ?></h4></a>
                      <p><?php $excerpt = get_the_excerpt(); echo esc_html( advance_ecommerce_store_string_limit_words( $excerpt,5 ) ); ?></p>
                    </div>
                  </div>
              <?php endwhile;
              wp_reset_postdata();
            ?>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="sidebar-products">
  <div class="container">
    <div class="row">
      <div id="sidebar" class="col-md-3 col-sm-3">
        <?php dynamic_sidebar('homepage-sidebar'); ?>
      </div>
      <div class="col-md-9 col-sm-9">
        <div class="product-page">
          <?php if( get_theme_mod('advance_ecommerce_store_section_title') != ''){ ?>
            <h3><?php echo esc_html(get_theme_mod('advance_ecommerce_store_section_title',__('NEW ARRIVALS','advance-ecommerce-store'))); ?></h3>
          <?php }?>
          <?php $pages = array();
            $mod = absint( get_theme_mod( 'advance_ecommerce_store_product_page','advance-ecommerce-store'));
            if ( 'page-none-selected' != $mod ) {
              $pages[] = $mod;
            }
            if( !empty($pages) ) :
              $args = array(
                'post_type' => 'page',
                'post__in' => $pages,
                'orderby' => 'post__in'
              );
              $query = new WP_Query( $args );
              if ( $query->have_posts() ) :
                $count = 0;
                while ( $query->have_posts() ) : $query->the_post(); ?>
                  <?php the_content(); ?>
                <?php $count++; endwhile; ?>
              <?php else : ?>
                <div class="no-postfound"></div>
              <?php endif;
            endif;
            wp_reset_postdata()
          ?>
        </div>
        <div id="content-ts">
          <?php while ( have_posts() ) : the_post(); ?>
            <?php the_content(); ?>
          <?php endwhile; // end of the loop. ?>
        </div>
      </div>
    </div>
  </div>
</div>

<?php get_footer(); ?>