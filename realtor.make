api = 2
core = 7.x

; Build Kit 7.x-2.x HEAD
includes[] = http://drupalcode.org/project/buildkit.git/blob_plain/refs/heads/7.x-2.x:/drupal-org.make

;--------------------
; Build Kit overrides
;--------------------

projects[tao][subdir] = contrib
projects[rubik][subdir] = contrib
projects[mayo][subdir] = contrib

# Override
projects[features][version] = "1.0"
projects[views][version] = "3.3"
projects[ctools][version] = "1.1"
projects[context][version] = "3.0-beta3"
projects[devel][version] = "1.3"

;--------------------
; Additional Contrib
;--------------------

;  Allow site to email 
projects[smtp][subdir] = contrib
projects[smtp][version] = 1.0-beta1

;  Rules 
projects[rules][subdir] = contrib
projects[rules][version] = 2.2 

projects[link][subdir] = contrib
projects[link][version] = 1.0

projects[admin_menu][subdir] = contrib
projects[admin_menu][version] = 3.0-rc3

projects[boxes][subdir] = contrib
projects[boxes][version] = 1.0

projects[markdown][subdir] = contrib
projects[markdown][version] = 1.0

; Creates invalid HTML with preformatted blocks.
; http://drupal.org/node/684554
projects[markdown][patch][684554] = http://drupal.org/files/issues/markdown-684554.patch

; Modules
projects[addressfield][version] = "1.0-beta3"
projects[addressfield][subdir] = "contrib"

projects[auto_nodetitle][version] = "1.0"
projects[auto_nodetitle][subdir] = "contrib"

projects[ckeditor][version] = "1.9"
projects[ckeditor][subdir] = "contrib"

projects[cck_phone][version] = "1.x-dev"
projects[cck_phone][subdir] = "contrib"

projects[date][version] = "2.5"
projects[date][subdir] = "contrib"

projects[editablefields][version] = "1.0-alpha2"
projects[editablefields][subdir] = "contrib"

projects[entity][version] = "1.0-rc3"
projects[entity][subdir] = "contrib"

projects[entityreference][version] = "1.0-rc3"
projects[entityreference][subdir] = "contrib"

projects[entityconnect][version] = "1.0-alpha5"
projects[entityconnect][subdir] = "contrib"

projects[eva][version] = "1.2"
projects[eva][subdir] = "contrib"

projects[field_collection][version] = "1.0-beta4"
projects[field_collection][subdir] = "contrib"

projects[field_collection_views][version] = "1.0-beta2"
projects[field_collection_views][subdir] = "contrib"

projects[field_group][version] = "1.1"
projects[field_group][subdir] = "contrib"

projects[geocoder][version] = "1.1"
projects[geocoder][subdir] = "contrib"

projects[geofield][version] = "1.1"
projects[geofield][subdir] = "contrib"

projects[geophp][version] = "1.4"
projects[geophp][subdir] = "contrib"

projects[imce][version] = "1.5"
projects[imce][subdir] = "contrib"

projects[libraries][version] = "1.0"
projects[libraries][subdir] = "contrib"

projects[metatags_quick][version] = "2.5"
projects[metatags_quick][subdir] = "contrib"

projects[noggin][version] = "1.0"
projects[noggin][subdir] = "contrib"

projects[pathauto][version] = "1.1"
projects[pathauto][subdir] = "contrib"

; Listing and Open House feature (content type)
;projects[oip_listing][download][type] = "git"
;projects[oip_listing][download][url] = "https://github.com/dwork/oip_listing.git"
;projects[oip_listing][subdir] = "contrib"
;projects[oip_listing][type] = "module"

; Realtor Policies (disclosure)
;projects[realtor_policies][download][type] = "git"
;projects[realtor_policies][download][url] = "https://github.com/dwork/realtor_policies.git"
;projects[realtor_policies][subdir] = "contrib"
;projects[realtor_policies][type] = "module"

; Realtor Users (fields and forms)
;projects[realtor_user][download][type] = "git"
;projects[realtor_user][download][url] = "https://github.com/dwork/realtor_user.git"
;projects[realtor_user][subdir] = "contrib"
;projects[realtor_user][type] = "module"

; Image Gallery (Colby's)
projects[image_gallery][download][type] = "git"
projects[image_gallery][download][url] = "https://github.com/dwork/image_gallery.git"
projects[image_gallery][subdir] = "contrib"
projects[image_gallery][type] = "module"
projects[image_gallery][version] = "1.0-beta1"

projects[token][version] = "1.1"
projects[token][subdir] = "contrib"

projects[views_php][version] = "1.x-dev"
projects[views_php][subdir] = "contrib"

projects[webform][version] = "3.18"
projects[webform][subdir] = "contrib"

; Libraries
; Please fill the following out. Type may be one of get, git, bzr or svn,
; and url is the url of the download.
; libraries[geoPHP][download][type] = "git"
; libraries[geoPHP][download][url] = "https://github.com/phayes/geoPHP.git"
; libraries[geoPHP][directory_name] = "geoPHP"
; libraries[geoPHP][type] = "library"

libraries[ckeditor][download][type] = "get"
libraries[ckeditor][download][url] = "http://download.cksource.com/CKEditor/CKEditor/CKEditor%203.6.3/ckeditor_3.6.3.tar.gz"
libraries[ckeditor][directory_name] = "ckeditor"
libraries[ckeditor][destination] = "modules/contrib/ckeditor"
libraries[ckeditor][overwrite] = 1

;--------------------
; Custom
;--------------------

includes[image_gallery] = http://github.com/dwork/image_gallery/raw/master/image_gallery.make.inc

; Include levelten features
includes[enterprise_base] = http://github.com/dwork/make-levelten/raw/master/enterprise_base.make.inc
includes[seotools] = http://github.com/dwork/make-levelten/raw/master/seotools.make.inc
includes[socialmedia] = http://github.com/dwork/make-levelten/raw/master/socialmedia.make.inc

;--------------------
; Development
;--------------------

projects[coder][subdir] = contrib
projects[coder][version] = 1.0
