<footer class="site-footer content-info" role="contentinfo">
    <div class="footer-top" style="background-image: url(<?php echo get_template_directory_uri() . '/assets/img/background-footer-top.jpg' ?>);">
        <div class="container">
            <h2 class="title">Let us help you solve your employee screening problems</h2>
            <button class="btn-usafact">Contact Us <i class="fas fa-chevron-circle-right "></i></button>
        </div>
    </div>
    <div class="footer-main" style="background-image: url(<?php echo get_template_directory_uri() . '/assets/img/shadow-right.png' ?>);">
        <div class="container">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-3">
                    <?php dynamic_sidebar( 'footer-a' ); ?>
                </div>
                <div class="col-12 col-md-6 col-lg-3">
                    <?php dynamic_sidebar( 'footer-b' ); ?>
                </div>
                <div class="col-12 col-md-6 col-lg-3">
                    <?php dynamic_sidebar( 'footer-c' ); ?>
                </div>
                <div class="col-12 col-md-6 col-lg-3">
                    <?php dynamic_sidebar( 'footer-d' ); ?>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <div class="container">
            <p><?php bloginfo( 'name' ); ?> &copy; <?php echo date( 'Y' ); ?>. All Rights reserved.<br class="d-md-none"> Powered by <a href="https://www.lemonadestand.org/" target="_blank">Lemonade Stand</a>. │ <a href="#">Privacy Policy</a></p>
        </div>
    </div>
</footer>

<?php the_field('footer_injection', 'option'); ?>

<?php wp_footer(); ?>
