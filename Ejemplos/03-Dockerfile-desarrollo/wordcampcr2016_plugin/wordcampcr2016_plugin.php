<?php
/**
 * Plugin Name: WordCamp Costa Rica 2016
 * Description: Plugin de ejemplo
 * Version: 1.0
 * Author: Alejandro Madrigal <me@alemadlei.tech>
 */

/**
 * Implements hook_wp_enqueue_scripts().
 *
 * Adds a custom JS.
 */
function wordcampcr2016_plugin_enqueue_scripts() {
  wp_enqueue_script('wordcampcr2016_plugin', plugin_dir_url(__FILE__) . 'wordcampcr2016_plugin.js', array('jquery'));
}
add_action('wp_enqueue_scripts', 'wordcampcr2016_plugin_enqueue_scripts');
