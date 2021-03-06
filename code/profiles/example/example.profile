<?php

/**
 * Implements hook_form_FORM_ID_alter().
 *
 * Allows the profile to alter the site configuration form.
 */
function example_form_install_configure_form_alter(&$form, $form_state) {
  $form['site_information']['site_name']['#default_value'] = "Example";
  $form['site_information']['site_mail']['#default_value'] = "example@example.com";
  $form['admin_account']['account']['name']['#default_value'] = "admin";
  $form['admin_account']['account']['mail']['#default_value'] = $form['site_information']['site_mail']['#default_value'];
  $form['server_settings']['site_default_country']['#default_value'] = "LV";
}
