<?php
/*
Template Name: Homepage
*/
?>
   
<section id="hero" style="background-image: url(<?php echo get_template_directory_uri() . '/assets/img/AdobeStock_144121574_Preview.jpeg' ?>);">
    <div class="container">
        <h1 class="title">All-in-one <br class="hidden-md hidden-lg"> Employee Screening</h1>
        <h3 class="subtitle">Solution for U.S. <span class="d-none d-lg-block"> and Global</span>Companies</h4>
        <p class="text">Background Checks • Drug Testing • Credit Identity Checks</p>
        <button class="btn-usafact">Get Quote<i class="fas fa-chevron-circle-right"></i></button>
    </div>
</section>
<section id="clients">
    <div class="container">
        <h2 class="section-title">Trusted Partners</h2>
        <div class="container-flex">
            <div class="client">
                <img src="<?php echo get_template_directory_uri() . '/assets/img/ata.jpg' ?>" alt="">
            </div>
            <div class="client">
                <img src="<?php echo get_template_directory_uri() . '/assets/img/ahla.jpg' ?>" alt="">
            </div>
            <div class="client">
                <img src="<?php echo get_template_directory_uri() . '/assets/img/cta.jpg' ?>" alt="">
            </div>
            <div class="client">
                <img src="<?php echo get_template_directory_uri() . '/assets/img/iapp.jpg' ?>" alt="">
            </div>
            <div class="client">
                <img src="<?php echo get_template_directory_uri() . '/assets/img/napbs.jpg' ?>" alt="">
            </div>
            <div class="client">
                <img src="<?php echo get_template_directory_uri() . '/assets/img/nbaa.jpg' ?>" alt="">
            </div>
        </div>
    </div>
</section>
<section id="services">
    <div class="container-flex">
        <div class="container-item">
            <div class="item">
                <h3 class="title-item">Background Check</h3>
                <div class="line"></div>
                <p class="text-item">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                    <span class="d-none d-lg-block">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua 
                    </span>
                </p>
                <a href="#" class="link-item">Learn More <i class="fas fa-chevron-circle-right"></i></a>
            </div>
        </div>
        <div class="container-item">
            <div class="item">
                <h3 class="title-item">Drug &amp; Health Screening</h3>
                <div class="line"></div>
               <p class="text-item">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                    <span class="d-none d-lg-block">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua 
                    </span>
                </p>
                <a href="#" class="link-item">Learn More <i class="fas fa-chevron-circle-right"></i></a>
            </div>
        </div>
        <div class="container-item" style="background-image: url(<?php echo get_template_directory_uri() . '/assets/img/shadow-left.png' ?>);">
            <div class="item">
                <h3 class="title-item">Identity Checks</h3>
                <div class="line"></div>
                <p class="text-item">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                    <span class="d-none d-lg-block">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua 
                    </span>
                </p>
                <a href="#" class="link-item">Learn More <i class="fas fa-chevron-circle-right"></i></a>
            </div>
        </div>
        <div class="container-item" style="background-image: url(<?php echo get_template_directory_uri() . '/assets/img/shadow-right.png' ?>);">
            <div class="item">
                <h3 class="title-item">Credit Card &amp; <br>History Checks</h3>
                <div class="line"></div>
                <p class="text-item">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                    <span class="d-none d-lg-block">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua 
                    </span>
                </p>
                <a href="#" class="link-item">Learn More <i class="fas fa-chevron-circle-right"></i></a>
            </div>
        </div>
        <div class="container-item">
            <div class="item">
                <h3 class="title-item">Employment History</h3>
                <div class="line"></div>
                <p class="text-item">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                    <span class="d-none d-lg-block">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua 
                    </span>
                </p>
                <a href="#" class="link-item">Learn More <i class="fas fa-chevron-circle-right"></i></a>
            </div>
        </div>
        <div class="container-item" style="background-image: url(<?php echo get_template_directory_uri() . '/assets/img/shadow-right.png' ?>);">
            <div class="item">
                <h3 class="title-item">Citizen &amp; Legal <br> Work Status</h3>
                <div class="line"></div>
               <p class="text-item">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                    <span class="d-none d-lg-block">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua 
                    </span>
                </p>
                <a href="#" class="link-item">Learn More <i class="fas fa-chevron-circle-right"></i></a>
            </div>
        </div>
    </div>
</section>
<section id="blog-posts" class="hidden-xs hidden-sm show-md">
    <div class="container">
    <h2 class="section-title">Featured Post</h2>
        <div class="row">
            <?php
                $args = array( 
                    'post_type'=> 'post',
                    'category_name' => 'featured',
                    'posts_per_page' => 3
                );
                $my_featured_query = new WP_Query($args);

                if ($my_featured_query->have_posts()) :
                    while($my_featured_query->have_posts()) :
                        $my_featured_query->the_post();
            ?>
               <div class="col-12 col-sm-4 col-md-4 col-lg4 col-xl-4">
                    <div class="article-container">
                        <div class="container-thumbnail">
                            <a href="<?php the_permalink(); ?>" title="Link to <?php the_title_attribute(); ?>">
                                <div class="featured-thumbnail" style="background-image: url(<?php the_post_thumbnail_url( 'large' ) ?>);"></div>
                            </a>
                        </div>
                        <a href="<?php the_permalink(); ?>">
                            <h3 class="title-article"><?php echo the_title(); ?></h3>
                        </a>
                        <p class="excerpt-article">
                            <?php custom_length_excerpt(20); ?>
                        </p>
                        <a href="<?php the_permalink(); ?>" class="link-article">Read More <i class="fas fa-chevron-circle-right"></i></a>
                    </div>
                </div>         
            <?php 
                endwhile;
        ?>
        <?php
            endif;
            wp_reset_postdata();
        ?>                   
        </div>
    </div>
</section> 
