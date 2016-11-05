<?php


/**
 * Implements hook_wp_enqueue_scripts().
 *
 * Adds a custom JS.
 */
function wordcampcr2016_theme_enqueue_scripts() {
  wp_enqueue_script('wordcampcr2016_theme', get_stylesheet_directory_uri() . '/wordcampcr2016_theme.js', array('jquery'));
}
add_action('wp_enqueue_scripts', 'wordcampcr2016_theme_enqueue_scripts');
