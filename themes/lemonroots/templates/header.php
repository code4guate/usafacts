<header class="site-header banner navbar navbar-default navbar-static-top" role="banner">
  <?php
  if (current_theme_supports('header-top-bar')) {
    get_template_part('templates/header-top-bar');
  }
  ?>
  <div class="container">
    <div class="header__wrap">
      <div class="navbar-header">
        <a class="logo" href="<?php echo home_url(); ?>/">
          <?php
          $site_logo = get_option( 'options_site_logo' );

          if ( ! $site_logo ) {
            echo the_custom_logo();
          } else {

            $args = [
                'class' => 'logo__img img-responsive',
            ];
            gm_get_image( $site_logo, $args );

          }
          ?>
        </a>
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar top-bar"></span>
          <span class="icon-bar middle-bar"></span>
          <span class="icon-bar bottom-bar"></span>
        </button>
      </div>
      <nav>
        <ul>
          <li><a href="#">Screening Solutions</a></li>
          <li><a href="#">Company</a></li>
          <li><a href="#">Get a Quote</a></li>
          <li><button>1-800-547-0263</button></li>
        </ul>
      </nav>
      <nav class="collapse navbar-collapse" role="navigation">
        <?php
        if ( has_nav_menu( 'primary_navigation' ) ) {
          wp_nav_menu( [ 'theme_location' => 'primary_navigation', 'menu_class' => 'nav navbar-nav' ] );
        }
        ?>
      </nav>
    </div>
  </div>


</header>
