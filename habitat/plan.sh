pkg_origin=gscho
pkg_name=hello-hab
pkg_deps=(core/nginx)
pkg_version="0.1.0"
pkg_svc_run="nginx -c ${pkg_svc_config_path}/nginx.conf"
pkg_svc_user="root"

do_build() {
  return 0
}

do_install() {
  mkdir -p ${PREFIX}/static
  cp ${PLAN_CONTEXT}/../index.html ${PREFIX}/static
}
