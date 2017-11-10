<?php

/**
 * @file
 * Contains component file.
 */

/**
 * Implements hook_preprocess_hook().
 */
function ec_europa_preprocess_comment(&$variables, $hook) {
  $comment = $variables['elements']['#comment'];
  $variables['created'] = format_date($comment->created, 'ec_date');
  $variables['submitted'] = t('!username', ['!username' => $variables['author']]) . '<span class="submitted-date">' . $variables['created'] . '</span>';
  $variables['title'] = check_plain($comment->subject);
  $variables['permalink'] = t('Permalink');
  $variables['atomium']['attributes']['title']->append('class', 'comment__title');
}