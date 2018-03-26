<?php
/*
Template Name: Home
*/
?>

<?php get_template_part('templates/head'); ?>

<?php 
    // $baseFields = get_fields(); 
    // echo '<pre>';
    // var_dump($baseFields);
    // echo '</pre>';
?>

<?php if($baseFields['body_class']): ?>
    <body <?php body_class( $baseFields["body_class"] ); ?>>  
<?php else: ?>
    <body <?php body_class(); ?>>
<?php endif; ?> 
   
    <div class="site-main wrapper" role="document">
       <section id="hero" style="background-image: url(<?php echo get_template_directory_uri() . '/assets/img/AdobeStock_144121574_Preview.jpeg' ?>);">
        <div class="container">
            <h1>All-in-one Employee Screening</h1>
            <h4>Solution for U.S. and Global Companies</h4>
            <p>Background Checks • Drug Testing • Credit Identity Checks</p>
            <button>Get Quote<i class="fas fa-chevron-circle-right"></i></button>
        </div>
       </section>
       <section id="clients">
        <div class="container">
            <h2>Trusted Partners</h2>
            <div class="container-flex">
                <div class="client">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/ata.jpg' ?>" alt="">
                </div>
                <div class="client">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/ahl.jpg' ?>" alt="">
                </div>
                <div class="client">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/cta.jpg' ?>" alt="">
                </div>
                <div class="client">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/app.jpg' ?>" alt="">
                </div>
                <div class="client">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/nabps.jpg' ?>" alt="">
                </div>
                <div class="client">
                    <img src="<?php echo get_template_directory_uri() . '/assets/img/nbaa.jpg' ?>" alt="">
                </div>
            </div>
        </div>
       </section>
       <section id="link-blocks">
        <div class="container-flex">
            <div class="container-item">
                <div class="item">
                    <h3>Background Check</h3>
                    <div class="line"></div>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua 
                    </p>
                    <a href="#">Learn More <i class="fas fa-chevron-circle-right"></i></a>
                </div>
            </div>
            <div class="container-item">
                <div class="item">
                    <h3>Drug &amp; Health Screening</h3>
                    <div class="line"></div>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua 
                    </p>
                    <a href="#">Learn More <i class="fas fa-chevron-circle-right"></i></a>
                </div>
            </div>
            <div class="container-item" style="background-image: url(<?php echo get_template_directory_uri() . '/assets/img/shadow-left.png' ?>);">
                <div class="item">
                    <h3>Identity Checks</h3>
                    <div class="line"></div>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua 
                    </p>
                    <a href="#">Learn More <i class="fas fa-chevron-circle-right"></i></a>
                </div>
            </div>
            <div class="container-item" style="background-image: url(<?php echo get_template_directory_uri() . '/assets/img/shadow-right.png' ?>);">
                <div class="item">
                    <h3>Credit Card &amp; <br>History Checks</h3>
                    <div class="line"></div>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua 
                    </p>
                    <a href="#">Learn More <i class="fas fa-chevron-circle-right"></i></a>
                </div>
            </div>
            <div class="container-item">
                <div class="item">
                    <h3>Employment History</h3>
                    <div class="line"></div>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua 
                    </p>
                    <a href="#">Learn More <i class="fas fa-chevron-circle-right"></i></a>
                </div>
            </div>
            <div class="container-item">
                <div class="item">
                    <h3>Citizen &amp; Legal <br>    Work Status</h3>
                    <div class="line"></div>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua 
                    </p>
                    <a href="#">Learn More <i class="fas fa-chevron-circle-right"></i></a>
                </div>
            </div>
        </div>
       </section>
       <section id="blog-posts">
        <div class="container">
            <h3>Background Check</h3>
            
        </div>
       </section>


</body>
</html>
