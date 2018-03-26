<header class="site-header banner navbar navbar-default navbar-static-top" role="banner">
  <?php
  if (current_theme_supports('header-top-bar')) {
    get_template_part('templates/header-top-bar');
  }
  ?> 

  <div id="header-bottom">
    <div class="container">
      <a class="logo" href="<?php echo home_url(); ?>/">
        <?php
          $site_logo = get_option( 'options_site_logo' );
          if ( ! $site_logo ) {
            echo the_custom_logo();
            // echo bloginfo( 'name' );
          } else {

            $args = [
                'class' => 'logo__img img-responsive',
            ];
            gm_get_image( $site_logo, $args );

          }
        ?>
      </a>
      <nav>
        <ul>
          <li><a href="#">Screening Solutions</a></li>
          <li><a href="#">Company</a></li>
          <li><a href="#">Get a Quote</a></li>
          <li><button>1-800-547-0263</button></li>
        </ul>
      </nav>
    </div>
  </div>

      <nav class="collapse navbar-collapse" role="navigation">
        <?php
          if ( has_nav_menu( 'primary_navigation' ) ) {
            wp_nav_menu( [ 'theme_location' => 'primary_navigation', 'menu_class' => 'nav navbar-nav' ] );
          }
        ?>
      </nav>

</header>
