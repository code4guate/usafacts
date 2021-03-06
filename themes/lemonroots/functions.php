<?php
/**
 * Roots includes
 */
require_once locate_template('/lib/helpers.php');         // Helper functions (combined with utils.php)
require_once locate_template('/lib/init.php');            // Initial theme setup and constants
require_once locate_template('/lib/image-sizes.php');     // Add custom image sizes here
require_once locate_template('/lib/wrapper.php');         // Theme wrapper class
require_once locate_template('/lib/sidebar.php');         // Sidebar class
require_once locate_template('/lib/config.php');          // Configuration
require_once locate_template('/lib/cleanup.php');         // Cleanup
require_once locate_template('/lib/nav.php');             // Custom nav modifications
require_once locate_template('/lib/gallery.php');         // Custom [gallery] modifications
require_once locate_template('/lib/comments.php');        // Custom comments modifications
require_once locate_template('/lib/relative-urls.php');   // Root relative URLs
require_once locate_template('/lib/widgets.php');         // Sidebars and widgets
require_once locate_template('/lib/scripts.php');         // Scripts and stylesheets
require_once locate_template('/lib/theme-options.php');   // Theme Options Page and Fields (via ACF)
require_once locate_template('/lib/custom.php');          // Custom functions

// The custom logo
add_theme_support( 'custom-logo', array(
    'height'      => 28,
    'width'       => 278
) );

// Custom Excerpt
function custom_length_excerpt($word_count_limit) {
    $content = wp_strip_all_tags(get_the_content() , true );
    echo wp_trim_words($content, $word_count_limit);
}