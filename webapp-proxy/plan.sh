pkg_origin=chintu9595
pkg_name=webapp-proxy
pkg_deps=(core/nginx)
pkg_version="0.1.0"
pkg_svc_run="nginx -c ${pkg_svc_config_path}/nginx.conf"
pkg_svc_user="root"

pkg_binds=(
  [app]="port"
)

do_build() {
  return 0
}

do_install() {
  return 0
}
