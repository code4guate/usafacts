<?php
/**
 * Register sidebars and widgets
 */
function roots_widgets_init() {

  /*===========================
      # Header Areas
   ===========================*/
  if ( current_theme_supports( 'header-top-bar' ) ) {
    register_sidebar( array (
        'name'          => __( 'Header Top Bar Left', 'roots' ),
        'id'            => 'header-top-bar-left',
        'before_widget' => '<section class="widget %1$s %2$s"><div class="widget-inner">',
        'after_widget'  => '</div></section>',
        'before_title'  => '<h3>',
        'after_title'   => '</h3>',
    ) );
    register_sidebar( array (
        'name'          => __( 'Header Top Bar Right', 'roots' ),
        'id'            => 'header-top-bar-right',
        'before_widget' => '<section class="widget %1$s %2$s"><div class="widget-inner">',
        'after_widget'  => '</div></section>',
        'before_title'  => '<h3>',
        'after_title'   => '</h3>',
    ) );
  }

  if ( current_theme_supports( 'header-two-navs' ) ) {
    register_sidebar( array (
        'name'          => __( 'Header Above Nav', 'roots' ),
        'id'            => 'header-above-nav',
        'before_widget' => '<section class="widget %1$s %2$s"><div class="widget-inner">',
        'after_widget'  => '</div></section>',
        'before_title'  => '<h3>',
        'after_title'   => '</h3>',
    ) );
  }

  if ( current_theme_supports( 'header-nav-bottom' ) ) {
    register_sidebar( array (
        'name'          => __( 'Header Right', 'roots' ),
        'id'            => 'header-right',
        'before_widget' => '<section class="widget %1$s %2$s"><div class="widget-inner">',
        'after_widget'  => '</div></section>',
        'before_title'  => '<h3>',
        'after_title'   => '</h3>',
    ) );
  }
  /*===========================
      # Slideshow Area
   ===========================*/
  register_sidebar( array (
      'name'          => __( 'Slideshow', 'roots' ),
      'id'            => 'slider',
      'before_widget' => '<section class="widget %1$s %2$s"><div class="widget-inner">',
      'after_widget'  => '</div></section>',
      'before_title'  => '<h3>',
      'after_title'   => '</h3>',
  ) );

  /*===========================
      # Preface Areas
   ===========================*/
  register_sidebar( array (
      'name'          => __( 'Preface A', 'roots' ),
      'id'            => 'preface-a',
      'before_widget' => '<section class="widget %1$s %2$s"><div class="widget-inner">',
      'after_widget'  => '</div></section>',
      'before_title'  => '<h3>',
      'after_title'   => '</h3>',
  ) );

  /*===========================
      # Sidebar Areas
   ===========================*/
  register_sidebar( array (
      'name'          => __( 'Sidebar', 'roots' ),
      'id'            => 'sidebar',
      'before_widget' => '<section class="widget %1$s %2$s">',
      'after_widget'  => '</section>',
      'before_title'  => '<h3>',
      'after_title'   => '</h3>',
  ) );

  /*===========================
      # Postscript Areas
   ===========================*/
  register_sidebar( array (
      'name'          => __( 'Postscript A', 'roots' ),
      'id'            => 'postscript-a',
      'before_widget' => '<section class="widget %1$s %2$s"><div class="widget-inner">',
      'after_widget'  => '</div></section>',
      'before_title'  => '<h3>',
      'after_title'   => '</h3>',
  ) );

  /*===========================
      # Footer Areas
   ===========================*/
  register_sidebar( array (
      'name'          => __( 'Footer', 'roots' ),
      'id'            => 'footer',
      'before_widget' => '<section class="widget %1$s %2$s">',
      'after_widget'  => '</section>',
      'before_title'  => '<h3>',
      'after_title'   => '</h3>',
  ) );

 register_sidebar( array (
     'name'          => __( 'Footer A', 'roots' ),
     'id'            => 'footer-a',
     'before_widget' => '<section class="widget %1$s %2$s"><div class="widget-inner">',
     'after_widget'  => '</div></section>',
     'before_title'  => '<h3>',
     'after_title'   => '</h3>',
 ) );

 register_sidebar( array (
     'name'          => __( 'Footer B', 'roots' ),
     'id'            => 'footer-b',
     'before_widget' => '<section class="widget %1$s %2$s"><div class="widget-inner">',
     'after_widget'  => '</div></section>',
     'before_title'  => '<h3>',
     'after_title'   => '</h3>',
 ) );

 register_sidebar( array (
     'name'          => __( 'Footer C', 'roots' ),
     'id'            => 'footer-c',
     'before_widget' => '<section class="widget %1$s %2$s"><div class="widget-inner">',
     'after_widget'  => '</div></section>',
     'before_title'  => '<h3>',
     'after_title'   => '</h3>',
 ) );

 register_sidebar( array (
     'name'          => __( 'Footer D', 'roots' ),
     'id'            => 'footer-d',
     'before_widget' => '<section class="widget %1$s %2$s"><div class="widget-inner">',
     'after_widget'  => '</div></section>',
     'before_title'  => '<h3>',
     'after_title'   => '</h3>',
 ) );

  if (current_theme_supports('footer-credits')) {
    register_sidebar( array (
        'name'          => __( 'Footer Credits', 'roots' ),
        'id'            => 'footer-credits',
        'before_widget' => '<section class="widget %1$s %2$s">',
        'after_widget'  => '</section>',
        'before_title'  => '<h3>',
        'after_title'   => '</h3>',
    ) );
  }

}

add_action( 'widgets_init', 'roots_widgets_init' );


class headerTopLinkWidget extends WP_Widget {

    function __construct() {
      // Instantiate the parent object
      $widget_options = array( 
        'classname' => 'header-top-link',
        'description' => 'add links to the top header bar'
      );
      parent::__construct( 'header-top-link', 'Header Top Link', $widget_options);
    }

    function widget( $args, $instance ) {
      // Widget output
        $linkText = $instance[ 'link-text' ];
        $linkHREF = $instance[ 'link-href' ];
        $linkIcon = $instance[ 'link-icon' ];
        echo $args['before_widget'];?>
        <span class="header-bar-link">
          <i class="<?php echo $linkIcon; ?>"></i>
          <a href='<?php echo $linkHREF; ?>'><?php echo $linkText; ?></a>
        </span>
        <?php echo $args['after_widget'];
    }

    function update( $new_instance, $old_instance ) {
      // Save widget options
      $instance = $old_instance;
      $instance[ 'link-text' ] = strip_tags( $new_instance[ 'link-text' ] );
      $instance[ 'link-href' ] = strip_tags( $new_instance[ 'link-href' ] );
      $instance[ 'link-icon' ] = strip_tags( $new_instance[ 'link-icon' ] );
      return $instance;
    }

    function form( $instance ) {
      $linkText = $instance[ 'link-text' ];
      $linkHREF = $instance[ 'link-href' ];
      $linkIcon = $instance[ 'link-icon' ];

      ?>
      <p>
        <label for="<?php echo $this->get_field_id( 'link-text' ); ?>">link text:</label>
        <input class="widefat" type="text" id="<?php echo $this->get_field_id( 'link-text' ); ?>" name="<?php echo $this->get_field_name( 'link-text' ); ?>" value="<?php echo esc_attr( $instance['link-text'] ); ?>" />
      </p>
      <p>
        <label for="<?php echo $this->get_field_id( 'link-href' ); ?>">link destination: (optional)</label>
        <input class="widefat" type="text" id="<?php echo $this->get_field_id( 'link-href' ); ?>" name="<?php echo $this->get_field_name( 'link-href' ); ?>" value="<?php echo esc_attr( $instance['link-href'] ); ?>" />
        <small>(leave blank for text-only)</small>
      </p>
      <p>
        <label for="<?php echo $this->get_field_id( 'link-icon' ); ?>">icon: (optional)</label>
        <input placeholder="fas fa-address-book" class="widefat" type="text" id="<?php echo $this->get_field_id( 'link-icon' ); ?>" name="<?php echo $this->get_field_name( 'link-icon' ); ?>" value="<?php echo esc_attr( $instance['link-icon'] ); ?>"  />
        <small>(copy code from <a target='_blank' href="https://fontawesome.com/icons?d=gallery">font awesome</a>)</small>
      </p>
    <?php 
    }
  }


function lemon_widgets() {
  register_widget( 'headerTopLinkWidget' );
}
add_action( 'widgets_init', 'lemon_widgets' );
