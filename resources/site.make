api = 2
core = 7.x

; ===================
; Contributed modules
; ===================

projects[admin_views][subdir] = "contrib"
projects[admin_views][version] = "1.5"
projects[ajax_comments][subdir] = "contrib"
projects[ajax_comments][version] = "1.0-beta2"
projects[apachesolr_sort][subdir] = "contrib"
projects[apachesolr_sort][version] = "1.0"
projects[context_og][subdir] = "contrib"
projects[context_og][version] = "2.1"
projects[css_injector][subdir] = "contrib"
projects[css_injector][version] = "1.10"
; Allow file upload with css injector
; https://www.drupal.org/node/2506775
; https://webgate.ec.europa.eu/CITnet/jira/browse/MULTISITE-6580
projects[css_injector][patch][] = https://www.drupal.org/files/issues/add_upload_files_v4.patch
; Unnecessary DB query and cache_set when rules are empty
; https://www.drupal.org/node/2759319
; https://webgate.ec.europa.eu/CITnet/jira/browse/NEXTEUROPA-12128
projects[css_injector][patch][] = https://www.drupal.org/files/issues/css_injector_load_rule_cache_empty-2759319-4.patch
projects[expanding_formatter][subdir] = "contrib"
projects[expanding_formatter][version] = "1.0"
projects[facetapi_bonus][subdir] = "contrib"
projects[facetapi_bonus][version] = "1.2"
projects[feeds_et][subdir] = "contrib"
projects[feeds_et][version] = "1.x-dev"
projects[globalredirect][subdir] = "contrib"
projects[globalredirect][version] = "1.5"
projects[js_injector][subdir] = "contrib"
projects[js_injector][version] = "2.1"
; Issue #1820210: After packing a JS Injector Rule into a feature, Notice: Undefined property: stdClass::$crid in js_injector_init() .
; https://www.drupal.org/node/1820210
; https://webgate.ec.europa.eu/CITnet/jira/browse/MULTISITE-8855
projects[js_injector][patch][] = https://www.drupal.org/files/issues/change-js_filename-1820210-2.patch
projects[js_injector][patch][] = patches/js_injector-delete-space-in-the-name-of-js-file.patch
projects[match_redirect][subdir] = "contrib"
projects[match_redirect][version] = "1.0"
projects[migrate_d2d][subdir] = "contrib"
projects[migrate_d2d][version] = "2.1"
projects[migrate_extras][subdir] = "contrib"
projects[migrate_extras][version] = "2.5"
projects[migrate_group_settings][subdir] = "contrib"
projects[migrate_group_settings][version] = "1.0-beta2"
projects[node_revision_delete][subdir] = "contrib"
projects[node_revision_delete][version] = "2.6"
projects[og_menu][subdir] = "contrib"
projects[og_menu][version] = "3.0"
projects[og_vocab][subdir] = "contrib"
projects[og_vocab][version] = "1.2"
projects[redirect][subdir] = "contrib"
projects[redirect][version] = "1.0-rc3"
projects[redirect][patch][] = "https://www.drupal.org/files/issues/support_migrate_module-1116408-128.patch"
projects[views_rss][subdir] = "contrib"
projects[views_rss][version] = "2.0-rc4"

; =========
; Libraries
; =========


; ======
; Themes
; ======
