core = 7.x
api = 2

projects[drupal][type] = core
projects[drupal][version] = "7.15"

;------------------------------------------------------------------------------------------
; Include "realtor" git
projects[realtor][type] = profile
projects[realtor][download][type] = git
projects[realtor][download][url] = git://github.com/dwork/realtor.git
