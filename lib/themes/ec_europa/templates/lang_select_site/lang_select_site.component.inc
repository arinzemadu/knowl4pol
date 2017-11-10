<?php

/**
 * @file
 * Contains component file.
 */

/**
 * Implements hook_atomium_definition_hook().
 */
function ec_europa_atomium_definition_lang_select_site() {
  global $language;
  return array(
    'label' => 'Site language selector',
    'description' => 'Site language selector.',
    'dependencies' => array('nexteuropa_multilingual'),
    'preview' => array(
      'url' => '#',
      'code' => isset($language->prefix) ? $language->prefix : $language->language,
      'label' => $language->native,
      'attributes' => array(),
    ),
  );
}

/**
 * Implements hook_atomium_theme_hook().
 */
function ec_europa_atomium_theme_lang_select_site() {
  return array(
    'lang_select_site' => array(
      'template' => 'lang-select-site',
      'variables' => array(
        'url' => NULL,
        'code' => NULL,
        'label' => NULL,
        'attributes' => array(),
      ),
    ),
  );
}

/**
 * Implements hook_preprocess_hook().
 */
function ec_europa_preprocess_lang_select_site(&$variables, $hook) {
  $lang_select = module_invoke('language_selector_site', 'block_view', 'language_selector_site');
  $variables['code'] = $lang_select['content']['code'];
  $variables['label'] = $lang_select['content']['label'];

  $variables['url'] = url(
    'language-selector/site-language', array(
      'html' => TRUE,
      'query' => array(
        drupal_get_destination(),
      ),
    )
  );

  $variables['atomium']['attributes']['wrapper']->merge($variables['attributes']);
  $variables['atomium']['attributes']['wrapper']->append('class', 'ecl-lang-select-sites');
}