api = 2
core = 7.x

; ===================
; Contributed modules
; ===================

; General projects directory
defaults[projects][subdir] = "contrib"

projects[admin_views][version] = "1.5"

projects[apachesolr_sort][version] = "1.0"

projects[context_og][version] = "2.1"

projects[expanding_formatter][version] = "1.0"

projects[facetapi_bonus][version] = "1.2"

projects[feeds_et][version] = "1.x"

projects[globalredirect][version] = "1.5"

projects[match_redirect][version] = "1.0"

projects[migrate_d2d][version] = "2.1"

projects[migrate_extras][version] = "2.5"

projects[migrate_group_settings][version] = "1.0-beta2"

; nexteuropa newsroom
projects[nexteuropa_newsroom][download][type] = "git"
projects[nexteuropa_newsroom][subdir] = "custom"
projects[nexteuropa_newsroom][download][url] = https://github.com/ec-europa/nexteuropa-newsroom-reference.git
projects[nexteuropa_newsroom][version] = "3.4.3"

projects[node_revision_delete][version] = "2.6"

projects[og_menu][version] = "3.0"

projects[og_vocab][version] = "1.2"

projects[redirect][version] = "1.0-rc3"

projects[views_rss][version] = "2.0-rc4"

; =========
; Libraries
; =========

; =======
; Patches
; =======

projects[feeds_et][patch][] = "http://drupal.org/files/feeds_et_link_support-2078069-1.patch"
projects[redirect][patch][] = "https://www.drupal.org/files/issues/support_migrate_module-1116408-128.patch"

; ======
; Themes
; ======

; ec_europa theme
projects[ec_europa][type] = theme
projects[ec_europa][download][type] = "git"
projects[ec_europa][download][url] = https://github.com/ec-europa/ec_europa.git
projects[ec_europa][version] = "0.0.4"
