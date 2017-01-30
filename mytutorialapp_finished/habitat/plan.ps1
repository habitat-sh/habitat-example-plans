$pkg_origin="mwrock"
$pkg_name="mytutorialapp"
$pkg_version="0.2.0"
$pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
$pkg_license=@("Apache-2.0")
$pkg_upstream_url="https://github.com/habitat-sh/habitat-example-plans"
$pkg_source="nosuchfile.tar.gz"
$pkg_deps=@("core/node")
$pkg_expose=@(8080)
$pkg_svc_user="mwrock"
$pkg_svc_group="mwrock"

function invoke-download {
}

function invoke-verify {
}

function invoke-unpack {
}

function invoke-build {
  # The mytutorialapp source code is in a relative directory, so you must copy the
  # contents of the source directory into your $HAB_CACHE_SRC_PATH/$pkg_dirname as this 
  # is the same path that Habitat would use if you downloaded a tarball of the source code.
  cp $PLAN_CONTEXT/../source/* $HAB_CACHE_SRC_PATH/$pkg_dirname -recurse -force

  # This installs both npm as well as the nconf module we listed as a
  # dependency in package.json.
  npm install
}

function invoke-install {
  # Our source files were copied over to HAB_CACHE_SRC_PATH/$pkg_dirname in do_build(),
  # and now they need to be copied from that directory into the root directory of our package 
  # through the use of the pkg_prefix variable. 
  cp package.json $pkg_prefix
  cp server.js $pkg_prefix

  # Copy over the nconf module to the package that we installed in do_build().
  mkdir $pkg_prefix/node_modules/
  cp node_modules/* $pkg_prefix/node_modules/ -recurse -force
}
