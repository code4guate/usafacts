<?php while (have_posts()) : the_post(); ?>
  <div class="container-post">
    <div class="container">
      <div class="row">
        <div class="col-12 col-md-8 col-lg-8">
          <article <?php post_class(); ?>>
            <div class="entry-content">
              <h1 class="entry-title"><?php the_title(); ?></h1>
              <?php the_content(); ?>
            </div>
          </article>
        </div>
        <div class="col-12 col-md-4 col-lg-3 col-lg-push-1">
            <?php comments_template('/templates/sidebar.php'); ?>
        </div>
      </div>
    </div>
  </div>
<?php endwhile; ?>
