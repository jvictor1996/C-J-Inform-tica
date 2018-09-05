<?php
/*
* @Author 		pickplugins
* Copyright: 	pickplugins.com
*/

if ( ! defined('ABSPATH')) exit;  // if direct access 


/* Wishlist Copy */
/* ===== === ===== */

function pickplugins_wl_ajax_wishlist_copy(){
	
	$wishlist_id = isset( $_POST['wishlist_id'] ) ? sanitize_text_field( $_POST['wishlist_id'] ) : "";
	
	if( empty( $wishlist_id ) || ! is_user_logged_in() ) die();
	
	$nepickplugins_wl_wishlist_ID = wp_insert_post( array(
		'post_title' 	=>  get_the_title( $wishlist_id ),
		'post_name' 	=> sanitize_title( get_the_title( $wishlist_id ) ),
		'post_type' 	=> 'wishlist',
		'post_status' 	=> 'publish',
		'author' 		=> get_current_user_id(),
	) );
	
	update_post_meta( $nepickplugins_wl_wishlist_ID, 'wishlist_status', 'public' );
	
	$wishlisted_items = pickplugins_wl_get_wishlisted_items( $wishlist_id );
	
	foreach( $wishlisted_items as $item ){
	
		pickplugins_wl_add_to_wishlist( $nepickplugins_wl_wishlist_ID, $item->post_id );
	}
	
	$wishlist_page 	= get_option( 'pickplugins_wl_wishlist_page' );
	$item_url		= basename( get_permalink( $nepickplugins_wl_wishlist_ID ) );	
	$item_slug		= basename( parse_url($item_url, PHP_URL_PATH) );
	
	if( ! empty( $wishlist_page ) ) $single_url = get_the_permalink( $nepickplugins_wl_wishlist_ID );
	else $single_url = $wishlist_page;
		
	echo $single_url;
	
	die();
}
add_action('wp_ajax_pickplugins_wl_ajax_wishlist_copy', 'pickplugins_wl_ajax_wishlist_copy');
add_action('wp_ajax_nopriv_pickplugins_wl_ajax_wishlist_copy', 'pickplugins_wl_ajax_wishlist_copy');	



/* Update Wishlist Vote */
/* ===== === ===== */

function pickplugins_wl_ajax_update_vote(){
	
	$wishlist_id	= isset( $_POST['wishlist_id'] ) ? sanitize_text_field( $_POST['wishlist_id'] ) : "";
	$vote_type		= isset( $_POST['vote_type'] ) ? sanitize_text_field( $_POST['vote_type'] ) : "";
	
	if( empty( $wishlist_id ) || empty( $vote_type ) || ! is_user_logged_in() ) die();
	
	$pickplugins_wl_votes = get_post_meta( $wishlist_id, 'pickplugins_wl_votes', true );
	if( empty( $pickplugins_wl_votes ) ) $pickplugins_wl_votes = array();
	
	
	$pickplugins_wl_votes[get_current_user_id()]['action'] = $vote_type;
	update_post_meta( $wishlist_id, 'pickplugins_wl_votes', $pickplugins_wl_votes );
	
	
	$vote_count = pickplugins_wl_get_votes_count( $wishlist_id );
	
	echo json_encode($vote_count);
	
	die();
}
add_action('wp_ajax_pickplugins_wl_ajax_update_vote', 'pickplugins_wl_ajax_update_vote');
add_action('wp_ajax_nopriv_pickplugins_wl_ajax_update_vote', 'pickplugins_wl_ajax_update_vote');	



/* Update Wishlist from Popup */
/* ===== === ===== */

function pickplugins_wl_ajax_set_views(){
	
	$wishlist_id 			= isset( $_POST['wishlist_id'] ) ? sanitize_text_field( $_POST['wishlist_id'] ) : "";
	$pickplugins_wl_views 	= get_post_meta( $wishlist_id, 'pickplugins_wl_views', true );
	
	if( empty( $pickplugins_wl_views ) ) $pickplugins_wl_views = 0;
	
	$pickplugins_wl_views++;
	
	echo update_post_meta( $wishlist_id, 'pickplugins_wl_views', $pickplugins_wl_views );
	
	die();
}
add_action('wp_ajax_pickplugins_wl_ajax_set_views', 'pickplugins_wl_ajax_set_views');
add_action('wp_ajax_nopriv_pickplugins_wl_ajax_set_views', 'pickplugins_wl_ajax_set_views');	



/* Update Wishlist from Popup */
/* ===== === ===== */

function pickplugins_wl_ajax_update_wishlist(){
	
	$pickplugins_wl_action	= isset( $_POST['pickplugins_wl_action'] ) ? sanitize_text_field( $_POST['pickplugins_wl_action'] ) : "";
	$wishlist_id			= isset( $_POST['wishlist_id'] ) ? sanitize_text_field( $_POST['wishlist_id'] ) : "";
	$wishlist_title			= isset( $_POST['wishlist_title'] ) ? sanitize_text_field( $_POST['wishlist_title'] ) : "";
	$wishlist_sd			= isset( $_POST['wishlist_sd'] ) ? sanitize_text_field( $_POST['wishlist_sd'] ) : "";
	$wishlist_status		= isset( $_POST['wishlist_status'] ) ? sanitize_text_field( $_POST['wishlist_status'] ) : "public";
	$wishlist_tags			= isset( $_POST['wishlist_tags'] ) ? sanitize_text_field( $_POST['wishlist_tags'] ) : "";
	
	
	if( $pickplugins_wl_action === "delete" ){
		
		$pickplugins_wl_wishlist_page = get_option( 'pickplugins_wl_wishlist_page' );
		
		wp_delete_post( $wishlist_id, true );
		
		echo get_the_permalink( $pickplugins_wl_wishlist_page );
		die();
	}
	
	if( $pickplugins_wl_action === "update" ){
		
		if( !empty( $wishlist_tags ) ) {
			
			$wishlist_tags_arr = explode( ",", $wishlist_tags );
			wp_set_post_terms( $wishlist_id, $wishlist_tags_arr, 'wishlist_tags' );
		}
		
		$ret = wp_update_post ( array(
			'ID'           	=> $wishlist_id,
			'post_title'   	=> $wishlist_title,
			'post_name'		=> sanitize_title( $wishlist_title ),
			'post_content' 	=> $wishlist_sd,
		) );
		
		update_post_meta( $wishlist_id, 'wishlist_status', $wishlist_status );
		
		$wishlist_page 	= get_option( 'pickplugins_wl_wishlist_page' );
		$item_url		= basename( get_permalink( $wishlist_id ) );	
		$item_slug		= basename( parse_url($item_url, PHP_URL_PATH) );
	
		//if( ! empty( $wishlist_page ) ) $single_url = get_the_permalink( $wishlist_page ) . "?list=$item_slug";

		//else $single_url = get_the_permalink( $wishlist_id );

		$single_url = get_the_permalink( $wishlist_id );
		
		echo $single_url;
		
		die();
	}


	echo "<li class='pickplugins_wl_menu_item pickplugins_wl_add_new'><i class='fa fa-plus'></i> ".__('Add New', 'woo-wishlist')."</li>";
	
	die();
}
add_action('wp_ajax_pickplugins_wl_ajax_update_wishlist', 'pickplugins_wl_ajax_update_wishlist');
add_action('wp_ajax_nopriv_pickplugins_wl_ajax_update_wishlist', 'pickplugins_wl_ajax_update_wishlist');	


/* Load Menu Items on Hover */
/* ===== === ===== */

function pickplugins_wl_ajax_get_wishlist_menu_items(){
	
	$item_id 	 		= isset( $_POST['item_id'] ) ? sanitize_text_field($_POST['item_id']) : 0;
	$current_user_id 	= get_current_user_id();
	$default_list_id	= get_option( 'pickplugins_wl_default_wishlist_id' );
	$wishlisted_array 	= pickplugins_wl_is_wishlisted( $item_id );
	
	$total_items 		= " (". count( pickplugins_wl_get_wishlisted_items( $default_list_id, -1, 1, true ) ) .")";
	
	if( !empty( $default_list_id ) && in_array( $default_list_id, $wishlisted_array ) )
		echo "<li class='pickplugins_wl_menu_item pickplugins_wl_saved' wishlist='$default_list_id'><i class='fa fa-heart' aria-hidden='true'></i> ".get_the_title($default_list_id)." $total_items</li>";
	else echo "<li class='pickplugins_wl_menu_item' wishlist='$default_list_id'><i class='fa fa-heart' aria-hidden='true'></i> ".get_the_title($default_list_id)." $total_items</li>";
	
	$wishlist_array = get_posts( array(
		'post_type' => 'wishlist',
		'author' => $current_user_id,
		'post__not_in' => array( $default_list_id ),
		'posts_per_page' => 5,
	) );
		
	foreach( $wishlist_array as $list ):
	
	$total_items = " (". count( pickplugins_wl_get_wishlisted_items( $list->ID, -1, 1, true ) ) .")";
	
	if( $wishlisted_array && in_array( $list->ID, $wishlisted_array ) )
		echo "<li class='pickplugins_wl_menu_item pickplugins_wl_saved' wishlist='{$list->ID}'><i class='fa fa-heart' aria-hidden='true'></i> {$list->post_title} $total_items</li>";
	else echo "<li class='pickplugins_wl_menu_item' wishlist='{$list->ID}'><i class='fa fa-heart' aria-hidden='true'></i> {$list->post_title} $total_items</li>";

	endforeach;

	echo "<li class='pickplugins_wl_menu_item pickplugins_wl_add_new'><i class='fa fa-plus'></i> ".__('Add New', 'woo-wishlist')."</li>";
	
	die();
}
add_action('wp_ajax_pickplugins_wl_ajax_get_wishlist_menu_items', 'pickplugins_wl_ajax_get_wishlist_menu_items');
add_action('wp_ajax_nopriv_pickplugins_wl_ajax_get_wishlist_menu_items', 'pickplugins_wl_ajax_get_wishlist_menu_items');	


function pickplugins_wl_ajax_add_remove_item_on_wishlist(){
	
	$pickplugins_wl_action = isset( $_POST['pickplugins_wl_action'] ) ? sanitize_text_field($_POST['pickplugins_wl_action']) : "";
	$item_id = isset( $_POST['item_id'] ) ? sanitize_text_field($_POST['item_id']) : "";
	$wishlist_id = isset( $_POST['wishlist_id'] ) ? sanitize_text_field($_POST['wishlist_id']) : "";
	
	if( empty( $pickplugins_wl_action ) || empty( $item_id ) || ! is_user_logged_in() ) die();
	
	if( empty( $wishlist_id ) ) $wishlist_id = get_option( 'pickplugins_wl_default_wishlist_id' );
	
	if( $pickplugins_wl_action == "remove_from_wishlist" ){
		
		echo pickplugins_wl_remove_from_wishlist( $wishlist_id, $item_id ) ? "removed" : "not";
		die();
	}
	
	if( $pickplugins_wl_action == "add_in_wishlist" ){
		
		echo pickplugins_wl_add_to_wishlist( $wishlist_id, $item_id ) ? "added" : "";
		die();
	}
	
	
	die();
}
add_action('wp_ajax_pickplugins_wl_ajax_add_remove_item_on_wishlist', 'pickplugins_wl_ajax_add_remove_item_on_wishlist');
add_action('wp_ajax_nopriv_pickplugins_wl_ajax_add_remove_item_on_wishlist', 'pickplugins_wl_ajax_add_remove_item_on_wishlist');


function pickplugins_wl_ajax_create_save_wishlist(){
	
	$wishlist_name 	= isset( $_POST['wishlist_name'] ) ? sanitize_text_field($_POST['wishlist_name']) : "";
	$item_id 	= isset( $_POST['item_id'] ) ? sanitize_text_field($_POST['item_id']) : "";
	
	if( is_user_logged_in() ){
		
		$nepickplugins_wl_wishlist_ID = wp_insert_post( array(
			'post_title' 	=> $wishlist_name,
			'post_type' 	=> 'wishlist',
			'post_status' 	=> 'publish',
			'author' 		=> get_current_user_id(),
		) );

		update_post_meta( $nepickplugins_wl_wishlist_ID, 'wishlist_status', 'public' );
		pickplugins_wl_add_to_wishlist( $nepickplugins_wl_wishlist_ID, $item_id );

	}
	
	die();
}
add_action('wp_ajax_pickplugins_wl_ajax_create_save_wishlist', 'pickplugins_wl_ajax_create_save_wishlist');
add_action('wp_ajax_nopriv_pickplugins_wl_ajax_create_save_wishlist', 'pickplugins_wl_ajax_create_save_wishlist');	
