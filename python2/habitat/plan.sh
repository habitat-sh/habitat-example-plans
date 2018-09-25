pkg_name=YOUR_PACKAGE_NAME
pkg_version=0.1.0
pkg_origin=YOUR_ORIGIN_NAME
pkg_deps=(core/python2)
pkg_build_deps=(core/gcc)

do_build() {
  return 0
}

do_install() {
  # copy across the one-file table-setting app plus requirements
  app_dir=$pkg_prefix/$pkg_name
  mkdir $app_dir
  cp index.py $app_dir/
  cp requirements.txt $app_dir/
  #install pip/virtualenv packages on top of python dependency (i.e. site packages)
  pip install --upgrade pip
  pip install virtualenv
  # create virtualenv for our dependencies & install
  virtualenv $app_dir/tsenv
  source $app_dir/tsenv/bin/activate
  pip install -r $app_dir/requirements.txt
  # ensure hab user can activate the virtualenv
  chown -R hab:hab $app_dir
}