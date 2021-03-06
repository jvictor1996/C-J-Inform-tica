<?php
/**
 * The template for displaying home page.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site will use a
 * different template.
 *
 * @package advance-ecommerce-store
 */

get_header(); ?>
<?php /** post section **/ ?>
  <section id="our-services">
    <div class="innerlightbox">
		  <div class="container">
        <?php
          $left_right = get_theme_mod( 'advance_ecommerce_store_layout_options','Right Sidebar');
          if($left_right == 'Left Sidebar'){ ?>
          <div class="row">
            <div class="col-md-4 col-sm-4">
              <?php get_sidebar();?>
            </div>
            <div id="post-<?php the_ID(); ?>" <?php post_class('col-md-8 col-sm-8 col-xs-12'); ?>>
              <?php if ( have_posts() ) :
                /* Start the Loop */
                while ( have_posts() ) : the_post();
                  get_template_part( 'template-parts/content' ); 
                endwhile;
                else :
                  get_template_part( 'no-results' );
                endif; 
              ?>
          	  <div class="navigation">
                <?php
                  // Previous/next page navigation.
                  the_posts_pagination( array(
                      'prev_text'          => __( 'Previous page', 'advance-ecommerce-store' ),
                      'next_text'          => __( 'Next page', 'advance-ecommerce-store' ),
                      'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'advance-ecommerce-store' ) . ' </span>',
                  ) );
                ?>
               </div> 
      	    </div>
          </div>
        <?php }else if($left_right == 'Right Sidebar'){ ?>
          <div class="row">
            <div id="post-<?php the_ID(); ?>" <?php post_class('col-md-8 col-sm-8 col-xs-12'); ?>>
              <?php if ( have_posts() ) :
                /* Start the Loop */
                while ( have_posts() ) : the_post();
                  get_template_part( 'template-parts/content' ); 
                endwhile;
                else :
                  get_template_part( 'no-results' );
                endif; 
              ?>
              <div class="navigation">
                <?php
                  // Previous/next page navigation.
                  the_posts_pagination( array(
                      'prev_text'          => __( 'Previous page', 'advance-ecommerce-store' ),
                      'next_text'          => __( 'Next page', 'advance-ecommerce-store' ),
                      'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'advance-ecommerce-store' ) . ' </span>',
                  ) );
                ?>
               </div> 
            </div>
        	  <div class="col-md-4 col-sm-4">
        			<?php get_sidebar();?>
        	  </div>
          </div>
        <?php }else if($left_right == 'One Column'){ ?>
          <div id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
            <?php if ( have_posts() ) :
              /* Start the Loop */
              while ( have_posts() ) : the_post();
                get_template_part( 'template-parts/content' ); 
              endwhile;
              else :
                get_template_part( 'no-results' );
              endif; 
            ?>
            <div class="navigation">
              <?php
                // Previous/next page navigation.
                the_posts_pagination( array(
                    'prev_text'          => __( 'Previous page', 'advance-ecommerce-store' ),
                    'next_text'          => __( 'Next page', 'advance-ecommerce-store' ),
                    'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'advance-ecommerce-store' ) . ' </span>',
                ) );
              ?>
             </div> 
          </div>
        <?php }else if($left_right == 'Three Columns'){ ?>
          <div class="row">
            <div id="sidebar" class="col-md-3 col-sm-3"><?php dynamic_sidebar('sidebar-1');?></div>
            <div id="post-<?php the_ID(); ?>" <?php post_class('col-md-6 col-sm-6 col-xs-12'); ?>>
              <?php if ( have_posts() ) :
                /* Start the Loop */
                while ( have_posts() ) : the_post();
                  get_template_part( 'template-parts/content' ); 
                endwhile;
                else :
                  get_template_part( 'no-results' );
                endif; 
              ?>
              <div class="navigation">
                <?php
                  // Previous/next page navigation.
                  the_posts_pagination( array(
                      'prev_text'          => __( 'Previous page', 'advance-ecommerce-store' ),
                      'next_text'          => __( 'Next page', 'advance-ecommerce-store' ),
                      'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'advance-ecommerce-store' ) . ' </span>',
                  ) );
                ?>
               </div> 
            </div>
            <div id="sidebar" class="col-md-3 col-sm-3"><?php dynamic_sidebar('sidebar-2');?></div>
          </div>
        <?php }else if($left_right == 'Four Columns'){ ?>
          <div class="row">
            <div id="sidebar" class="col-md-3"><?php dynamic_sidebar('sidebar-1');?></div>
            <div id="post-<?php the_ID(); ?>" <?php post_class('col-md-3 col-sm-3 col-xs-12'); ?>>
              <?php if ( have_posts() ) :
                /* Start the Loop */
                while ( have_posts() ) : the_post();
                  get_template_part( 'template-parts/content' ); 
                endwhile;
                else :
                  get_template_part( 'no-results' );
                endif; 
              ?>
              <div class="navigation">
                <?php
                  // Previous/next page navigation.
                  the_posts_pagination( array(
                      'prev_text'          => __( 'Previous page', 'advance-ecommerce-store' ),
                      'next_text'          => __( 'Next page', 'advance-ecommerce-store' ),
                      'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'advance-ecommerce-store' ) . ' </span>',
                  ) );
                ?>
               </div> 
            </div>
            <div id="sidebar" class="col-md-3 col-sm-3"><?php dynamic_sidebar('sidebar-2');?></div>
            <div id="sidebar" class="col-md-3 col-sm-3"><?php dynamic_sidebar('sidebar-3');?></div>
          </div>
        <?php }else if($left_right == 'Grid Layout'){ ?>
          <div id="post-<?php the_ID(); ?>" <?php post_class('row'); ?>>
            <?php if ( have_posts() ) :
              /* Start the Loop */
              while ( have_posts() ) : the_post();
                get_template_part( 'template-parts/grid-layout' ); 
              endwhile;
              else :
                get_template_part( 'no-results' );
              endif; 
            ?>
            <div class="navigation">
              <?php
                // Previous/next page navigation.
                the_posts_pagination( array(
                    'prev_text'          => __( 'Previous page', 'advance-ecommerce-store' ),
                    'next_text'          => __( 'Next page', 'advance-ecommerce-store' ),
                    'before_page_number' => '<span class="meta-nav screen-reader-text">' . __( 'Page', 'advance-ecommerce-store' ) . ' </span>',
                ) );
              ?>
             </div> 
          </div>
        <?php }?>
  		  <div class="clearfix"></div>
      </div>
    </div>
  </section>

<?php get_footer(); ?>