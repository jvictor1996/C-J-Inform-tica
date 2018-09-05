<?php

/*
* @Author 		pickplugins
* Copyright: 	2015 pickplugins
*/

if ( ! defined('ABSPATH')) exit;  // if direct access 


class pickplugins_wl_Shortcodes {

	function __construct() {
		add_shortcode( 'wishlist_button', array( $this, 'wishlist_button_display' ) );
		add_shortcode( 'wishlist_archive', array( $this, 'wishlist_archive_display' ) );
		add_shortcode( 'wishlist_single', array( $this, 'wishlist_single_display' ) );
		add_shortcode( 'wishlist_count_by_post', array( $this, 'wishlist_count_by_post_display' ) );

	}	
	

	
	public function wishlist_single_display( $atts ) {
		
		$atts = shortcode_atts( array( 'id' => '' ), $atts);
		
		$wishlist_id = isset( $atts['id'] ) ? $atts['id'] : 0;
		
		if( $wishlist_id == 0 ) return;
		
		ob_start();
		include( PICKPLUGINS_WISHLIST_PLUGIN_DIR . 'templates/wishlist-single/wishlist-single.php');
		return ob_get_clean();
	}
	
	public function wishlist_archive_display( $atts ) {
		
		$atts = shortcode_atts( array(), $atts);
				
		ob_start();
		include( PICKPLUGINS_WISHLIST_PLUGIN_DIR . 'templates/wishlist-display.php');
		return ob_get_clean();
	}
	
	public function wishlist_button_display( $atts ) {
		
		$atts = shortcode_atts( array( 'id' => '', 'show_count' => '' ), $atts);
		
		$item_id 	= isset( $atts['id'] ) ? $atts['id'] : 0;
		$show_count = isset( $atts['show_count'] ) ? $atts['show_count'] : '';
		
		if( $item_id == 0 ) return;
		
		ob_start();
		include( PICKPLUGINS_WISHLIST_PLUGIN_DIR . 'templates/wishlist-add.php');
		return ob_get_clean();
	}


	public function wishlist_count_by_post_display( $atts ) {

		$atts = shortcode_atts( array( 'id' => '' ), $atts);

		$item_id = isset( $atts['id'] ) ? $atts['id'] : 0;

		if( $item_id == 0 ) return 0;
		global $wpdb;
		return $wpdb->get_var("
		SELECT 	COUNT(*)
		FROM 	{$wpdb->prefix}pickplugins_wl_data
		WHERE	post_id = $item_id
	");


	}









	
} new pickplugins_wl_Shortcodes();

