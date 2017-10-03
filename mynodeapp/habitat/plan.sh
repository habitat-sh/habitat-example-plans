pkg_origin=myorigin
pkg_name=mytutorialapp
pkg_version="0.2.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_upstream_url=https://github.com/habitat-sh/habitat-example-plans
pkg_scaffolding=core/scaffolding-node

declare -A scaffolding_env

 # Define path to config file
scaffolding_env[APP_CONFIG]="{{pkg.svc_config_path}}/config.json"