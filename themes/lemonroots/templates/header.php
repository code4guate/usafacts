<header class="site-header banner navbar navbar-default navbar-static-top" role="banner">
  <?php
  if (current_theme_supports('header-top-bar')) {
    get_template_part('templates/header-top-bar');
  }
  ?> 
  
  <?php get_template_part( 'header-top-bar.php', 'module' ); ?>


  <div class="container">
    <div class="header__wrap">
      <div class="navbar-header">
        <a class="logo" href="<?php echo home_url(); ?>/">
          <?php the_custom_logo(); ?>
          <?php
            $site_logo = get_option( 'options_site_logo' );
            if ( ! $site_logo ) {
              echo bloginfo( 'name' );
            } else {

              $args = [
                  'class' => 'logo__img img-responsive',
              ];
              gm_get_image( $site_logo, $args );

            }
          ?>
        </a>
      </div>
      
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
