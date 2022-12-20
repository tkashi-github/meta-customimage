SUMMARY = "Customized u-boot recipe"
DESCRIPTION = "Recipe created by bitbake-layers"
LICENSE = "MIT"
FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
            file://0001-custom-imx8mp_var_dart_defconfig.patch \
            file://0002-enable-RTOS.patch \
"

