<?php

/**
 * @file
 * Contains component file.
 */

/**
 * Implements hook_preprocess_hook().
 */
function ec_europa_preprocess_field(&$variables, $hook) {
  $element = &$variables['element'];
  if (isset($element['#label'])) {
    $variables['label'] = $element['#label'];
  }

  // @TODO refactor Add the tpl classes here
  // Changing label for the field to display stripped out values.
  switch ($variables['element']['#field_name']) {
    case 'field_core_social_network_links':
      $element['before'] = t('Follow the latest progress and get involved.');
      $element['after'] = l(t('Other social networks'), variable_get('dt_core_other_social_networks_link', 'http://europa.eu/contact/social-networks/index_en.htm'));
      break;
  }
  if ($element['#field_type'] <> 'ds') {
    // Initialize parameter.
    $allow_attribute = TRUE;
    // If it is not a tranlateable entityreference field we should continue.
    if ($element['#field_type'] == "entityreference" && $element['#field_translatable'] == 0) {
      $allow_attribute = FALSE;
    }
    if ($allow_attribute) {
      // The default language code.
      $content_langcode = $GLOBALS['language_content']->language;
      // When the language is different from content.
      if (isset($element['#language'])
        && $element['#language'] <> LANGUAGE_NONE
        && $element['#language'] <> $content_langcode
      ) {
        $variables['attributes']['lang'] = $element['#language'];
      }
    }

    // In case of "Long text" or "Long text and summary" field, inject the
    // namespace class in the item class.
    if (in_array($element['#field_type'], array('text_with_summary', 'text_long'))) {
      foreach ($variables['items'] as $delta => $item) {
        $variables['atomium']['attributes'][$delta]->append('class', 'ecl-editor');
      }
    }
  }
}

/**
 * Implements hook_preprocess_hook().
 */
function ec_europa_preprocess_field__list_boolean__list_default__group_access__node__full__community(&$variables, $hook) {
  if ($object = $variables['element']['#object']) {
    $wrapper = entity_metadata_wrapper('node', $object);

    $theme = 'labels__open';
    if (0 == $wrapper->group_access->value()) {
      $theme = 'labels__closed';
    }

    foreach ($variables['items'] as $delta => &$item) {
      $item = array(
        '#theme' => $theme,
        '#content' => $item['#markup'],
      );
    }
  }
}