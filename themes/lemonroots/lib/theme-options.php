<?php

if( function_exists('acf_add_options_page') ) {
    
    acf_add_options_page(array(
        'page_title'    => 'Theme General Settings',
        'menu_title'    => 'Theme Settings',
        'menu_slug'     => 'theme-general-settings',
        'capability'    => 'edit_posts',
        'redirect'      => false
    ));
    
    acf_add_options_sub_page(array(
        'page_title'    => 'Theme Header Settings',
        'menu_title'    => 'Header',
        'parent_slug'   => 'theme-general-settings',
    ));
    
    acf_add_options_sub_page(array(
        'page_title'    => 'Theme Footer Settings',
        'menu_title'    => 'Footer',
        'parent_slug'   => 'theme-general-settings',
    ));
    
}

if( function_exists('acf_add_local_field_group') ):

  acf_add_local_field_group(array (
      'key' => 'group_58bc6d178c3c3',
      'title' => 'Theme Settings',
      'fields' => array (
          array (
              'key' => 'field_58bc6d1c20ddb',
              'label' => 'Logo',
              'name' => 'site_logo',
              'type' => 'image',
              'instructions' => '',
              'required' => 0,
              'conditional_logic' => 0,
              'wrapper' => array (
                  'width' => '',
                  'class' => '',
                  'id' => '',
              ),
              'return_format' => 'id',
              'preview_size' => 'medium',
              'library' => 'all',
              'min_width' => '',
              'min_height' => '',
              'min_size' => '',
              'max_width' => '',
              'max_height' => '',
              'max_size' => '',
              'mime_types' => '',
          ),
      ),
      'location' => array (
          array (
              array (
                  'param' => 'options_page',
                  'operator' => '==',
                  'value' => 'theme-general-settings',
              ),
          ),
      ),
      'menu_order' => 0,
      'position' => 'normal',
      'style' => 'default',
      'label_placement' => 'top',
      'instruction_placement' => 'label',
      'hide_on_screen' => '',
      'active' => 1,
      'description' => '',
  ));


acf_add_local_field_group(array (
    'key' => 'group_59a7195ba4bf1',
    'title' => 'Footer Options',
    'fields' => array (
        array (
            'key' => 'field_59a7196b6158f',
            'label' => 'Footer Injection',
            'name' => 'footer_injection',
            'type' => 'textarea',
            'instructions' => '',
            'required' => 0,
            'conditional_logic' => 0,
            'wrapper' => array (
                'width' => '',
                'class' => '',
                'id' => '',
            ),
            'default_value' => '',
            'placeholder' => '',
            'maxlength' => '',
            'rows' => '',
            'new_lines' => '',
        ),
    ),
    'location' => array (
        array (
            array (
                'param' => 'options_page',
                'operator' => '==',
                'value' => 'acf-options-footer',
            ),
        ),
    ),
    'menu_order' => 0,
    'position' => 'normal',
    'style' => 'default',
    'label_placement' => 'top',
    'instruction_placement' => 'label',
    'hide_on_screen' => '',
    'active' => 1,
    'description' => '',
));

acf_add_local_field_group(array (
    'key' => 'group_59a6f60e015cd',
    'title' => 'Header Options',
    'fields' => array (
        array (
            'key' => 'field_59a6f6136180a',
            'label' => 'Header Injection',
            'name' => 'header_injection',
            'type' => 'textarea',
            'instructions' => '',
            'required' => 0,
            'conditional_logic' => 0,
            'wrapper' => array (
                'width' => '',
                'class' => '',
                'id' => '',
            ),
            'default_value' => '',
            'placeholder' => '',
            'maxlength' => '',
            'rows' => '',
            'new_lines' => '',
        ),
        array (
            'key' => 'field_59b6f28fc439b',
            'label' => 'Banner Test',
            'name' => 'banner_test',
            'type' => 'image',
            'instructions' => '',
            'required' => 0,
            'conditional_logic' => 0,
            'wrapper' => array (
                'width' => '',
                'class' => '',
                'id' => '',
            ),
            'return_format' => 'array',
            'preview_size' => 'thumbnail',
            'library' => 'all',
            'min_width' => '',
            'min_height' => '',
            'min_size' => '',
            'max_width' => '',
            'max_height' => '',
            'max_size' => '',
            'mime_types' => '',
        ),
    ),
    'location' => array (
        array (
            array (
                'param' => 'options_page',
                'operator' => '==',
                'value' => 'acf-options-header',
            ),
        ),
    ),
    'menu_order' => 0,
    'position' => 'normal',
    'style' => 'default',
    'label_placement' => 'top',
    'instruction_placement' => 'label',
    'hide_on_screen' => '',
    'active' => 1,
    'description' => '',
));

acf_add_local_field_group(array (
    'key' => 'group_59a5c1c87bc87',
    'title' => 'Page Fields',
    'fields' => array (
        array (
            'key' => 'field_59a5dfb2627ee',
            'label' => 'Header Options',
            'name' => '',
            'type' => 'tab',
            'instructions' => '',
            'required' => 0,
            'conditional_logic' => 0,
            'wrapper' => array (
                'width' => '',
                'class' => '',
                'id' => '',
            ),
            'placement' => 'top',
            'endpoint' => 0,
        ),
        array (
            'key' => 'field_59b04355493ec',
            'label' => 'Hide Title',
            'name' => 'hide_title',
            'type' => 'true_false',
            'instructions' => '',
            'required' => 0,
            'conditional_logic' => 0,
            'wrapper' => array (
                'width' => '',
                'class' => '',
                'id' => '',
            ),
            'message' => '',
            'default_value' => 0,
            'ui' => 1,
            'ui_on_text' => 'Page Title Hidden',
            'ui_off_text' => 'Visible',
        ),
        array (
            'key' => 'field_59b04b753aefe',
            'label' => 'Custom Title',
            'name' => 'custom_title',
            'type' => 'text',
            'instructions' => '',
            'required' => 0,
            'conditional_logic' => 0,
            'wrapper' => array (
                'width' => '',
                'class' => '',
                'id' => '',
            ),
            'default_value' => '',
            'placeholder' => '',
            'prepend' => '',
            'append' => '',
            'maxlength' => '',
        ),
        array (
            'key' => 'field_59a5e1c153209',
            'label' => 'Background Image',
            'name' => 'background_image',
            'type' => 'image',
            'instructions' => '',
            'required' => 0,
            'conditional_logic' => 0,
            'wrapper' => array (
                'width' => '',
                'class' => '',
                'id' => '',
            ),
            'return_format' => 'array',
            'preview_size' => 'thumbnail',
            'library' => 'all',
            'min_width' => '',
            'min_height' => '',
            'min_size' => '',
            'max_width' => '',
            'max_height' => '',
            'max_size' => '',
            'mime_types' => '',
        ),
        array (
            'key' => 'field_59a5e236cbbfa',
            'label' => 'Custom Header Text',
            'name' => 'custom_header_text',
            'type' => 'wysiwyg',
            'instructions' => '',
            'required' => 0,
            'conditional_logic' => 0,
            'wrapper' => array (
                'width' => '',
                'class' => '',
                'id' => '',
            ),
            'default_value' => '',
            'tabs' => 'all',
            'toolbar' => 'full',
            'media_upload' => 1,
            'delay' => 0,
        ),
        array (
            'key' => 'field_59a5e2eddc306',
            'label' => 'Page Tagline',
            'name' => 'page_tagline',
            'type' => 'text',
            'instructions' => '',
            'required' => 0,
            'conditional_logic' => 0,
            'wrapper' => array (
                'width' => '',
                'class' => '',
                'id' => '',
            ),
            'default_value' => '',
            'placeholder' => '',
            'prepend' => '',
            'append' => '',
            'maxlength' => '',
        ),
        array (
            'key' => 'field_59a5dfc9627ef',
            'label' => 'Page Options',
            'name' => '',
            'type' => 'tab',
            'instructions' => '',
            'required' => 0,
            'conditional_logic' => 0,
            'wrapper' => array (
                'width' => '',
                'class' => '',
                'id' => '',
            ),
            'placement' => 'top',
            'endpoint' => 0,
        ),
        array (
            'key' => 'field_59a5c1d5b09c2',
            'label' => 'Full Width',
            'name' => 'full_width',
            'type' => 'true_false',
            'instructions' => 'Select to enable full width page',
            'required' => 0,
            'conditional_logic' => 0,
            'wrapper' => array (
                'width' => '',
                'class' => '',
                'id' => '',
            ),
            'message' => '',
            'default_value' => 0,
            'ui' => 1,
            'ui_on_text' => 'Active',
            'ui_off_text' => '',
        ),
        array (
            'key' => 'field_59a72c0554481',
            'label' => 'Body Class',
            'name' => 'body_class',
            'type' => 'text',
            'instructions' => 'Add classes to the <body> tag',
            'required' => 0,
            'conditional_logic' => 0,
            'wrapper' => array (
                'width' => '',
                'class' => '',
                'id' => '',
            ),
            'default_value' => '',
            'placeholder' => '',
            'prepend' => '',
            'append' => '',
            'maxlength' => '',
        ),
    ),
    'location' => array (
        array (
            array (
                'param' => 'post_type',
                'operator' => '==',
                'value' => 'post',
            ),
        ),
        array (
            array (
                'param' => 'post_type',
                'operator' => '==',
                'value' => 'page',
            ),
        ),
    ),
    'menu_order' => 0,
    'position' => 'normal',
    'style' => 'default',
    'label_placement' => 'top',
    'instruction_placement' => 'label',
    'hide_on_screen' => '',
    'active' => 1,
    'description' => '',
));

acf_add_local_field_group(array (
    'key' => 'group_59a99982633be',
    'title' => 'Theme Options',
    'fields' => array (
        array (
            'key' => 'field_59a99dee326a2',
            'label' => 'Sidebar',
            'name' => 'sidebar',
            'type' => 'true_false',
            'instructions' => 'By default, sidebar will be turned off. Please turn on to add sidebar to website.',
            'required' => 0,
            'conditional_logic' => 0,
            'wrapper' => array (
                'width' => '',
                'class' => '',
                'id' => '',
            ),
            'message' => '',
            'default_value' => 0,
            'ui' => 1,
            'ui_on_text' => 'Sidebars turned on',
            'ui_off_text' => 'No Sidebar',
        ),
        array (
            'key' => 'field_59a99f3e44161',
            'label' => 'Sidebar Position',
            'name' => 'sidebar_position',
            'type' => 'radio',
            'instructions' => '',
            'required' => 1,
            'conditional_logic' => array (
                array (
                    array (
                        'field' => 'field_59a99dee326a2',
                        'operator' => '==',
                        'value' => '1',
                    ),
                ),
            ),
            'wrapper' => array (
                'width' => '',
                'class' => '',
                'id' => '',
            ),
            'choices' => array (
                'left' => 'Left',
                'right' => 'Right',
            ),
            'allow_null' => 0,
            'other_choice' => 0,
            'save_other_choice' => 0,
            'default_value' => '',
            'layout' => 'horizontal',
            'return_format' => 'value',
        ),
        array (
            'key' => 'field_59a9a09091508',
            'label' => 'Sidebar Location',
            'name' => 'sidebar_location',
            'type' => 'checkbox',
            'instructions' => '',
            'required' => 1,
            'conditional_logic' => array (
                array (
                    array (
                        'field' => 'field_59a99dee326a2',
                        'operator' => '==',
                        'value' => '1',
                    ),
                ),
            ),
            'wrapper' => array (
                'width' => '',
                'class' => '',
                'id' => '',
            ),
            'choices' => array (
                'all' => 'All',
                'is_single' => 'Single Pages',
                'is_page' => 'All Pages',
                'is_home' => 'Blog Pages',
            ),
            'allow_custom' => 1,
            'save_custom' => 0,
            'default_value' => array (
            ),
            'layout' => 'horizontal',
            'toggle' => 0,
            'return_format' => 'value',
        ),
    ),
    'location' => array (
        array (
            array (
                'param' => 'options_page',
                'operator' => '==',
                'value' => 'theme-general-settings',
            ),
        ),
    ),
    'menu_order' => 0,
    'position' => 'normal',
    'style' => 'default',
    'label_placement' => 'top',
    'instruction_placement' => 'label',
    'hide_on_screen' => '',
    'active' => 1,
    'description' => '',
));

endif;