<?php 
  class headerTopWidget extends WP_Widget {

    function __construct() {
      // Instantiate the parent object
      $widget_options = array( 
        'classname' => 'header-top-widget',
        'description' => 'The links submitted here will appear in the bar in the top of the header',
      );
      parent::__construct( 'header-top-widget', 'Header Top Widget', $widget_options);
    }

    function widget( $args, $instance ) {
      // Widget output
      $title = apply_filters( 'widget_title', $instance[ 'title' ] );
      $blog_title = get_bloginfo( 'name' );
      $tagline = get_bloginfo( 'description' );
      echo $args['before_widget'] . $args['before_title'] . $title . $args['after_title']; ?>

      <p><strong>Site Name:</strong> <?php echo $blog_title ?></p>
      <p><strong>Tagline:</strong> <?php echo $tagline ?></p>

      <?php echo $args['after_widget'];
    }

    function update( $new_instance, $old_instance ) {
      // Save widget options
      ?>
      <label>link name:</label>
      <input type="" name="">
      <?php
    }

    function form( $instance ) {
      // Output admin widget options form
      $instance = $old_instance;
      $instance[ 'title' ] = strip_tags( $new_instance[ 'title' ] );
      return $instance;
    }
  }
?>