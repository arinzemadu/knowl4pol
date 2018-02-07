api = 2
core = 7.x

; ===================
; Contributed modules
; ===================

; General projects directory
defaults[projects][subdir] = "contrib"

projects[admin_views][version] = "1.5"

projects[apachesolr_sort][version] = "1.0"

projects[conditional_fields][version] = "3.0-alpha2"

projects[context_og][version] = "2.1"

projects[expanding_formatter][version] = "1.0"

projects[facetapi_bonus][version] = "1.2"

projects[facetapi_select][version] = "1.3"

projects[feeds_et][version] = "1.x"

projects[feeds_ex][version] = "1.0-beta2"

projects[feeds_tamper_conditional][version] = "1.0-rc1"

projects[field_default_token][version] = "1.3"

projects[field_validation][version] = "2.6"

projects[globalredirect][version] = "1.5"

projects[hierarchical_select][version] = "3.0-beta7"

projects[match_redirect][version] = "1.0"

projects[migrate_d2d][version] = "2.1"

projects[migrate_extras][version] = "2.5"

projects[migrate_group_settings][version] = "1.0-beta2"

; nexteuropa newsroom
projects[nexteuropa_newsroom][download][type] = "git"
projects[nexteuropa_newsroom][subdir] = "custom"
projects[nexteuropa_newsroom][download][url] = https://github.com/ec-europa/nexteuropa-newsroom-reference.git
projects[nexteuropa_newsroom][version] = "v3.4.4"

projects[node_revision_delete][version] = "2.6"

projects[og_menu][version] = "3.0"

projects[og_vocab][version] = "1.2"

projects[redirect][version] = "1.0-rc3"

projects[views_rss][version] = "2.0-rc4"

; =========
; Libraries
; =========

libraries[jsonpath][download][type] = "git"
libraries[jsonpath][download][url] = "https://github.com/amd-miri/jsonpath"
libraries[jsonpath][download][tag] = "v1.0"
libraries[jsonpath][destination] = "libraries"

; =======
; Patches
; =======

projects[feeds_et][patch][] = "http://drupal.org/files/feeds_et_link_support-2078069-1.patch"
projects[redirect][patch][] = "https://www.drupal.org/files/issues/support_migrate_module-1116408-128.patch"

; ======
; Themes
; ======

projects[atomium][type] = theme
projects[atomium][subdir] = ""
projects[atomium][download][type] = git
projects[atomium][download][url] = https://github.com/ec-europa/atomium.git
projects[atomium][download][branch] = 7.x-2.x

projects[ec_europa][type] = theme
projects[ec_europa][download][type] = git
projects[ec_europa][subdir] = ""
projects[ec_europa][download][url] = https://github.com/ec-europa/ec_europa.git
projects[ec_europa][download][branch] = master

