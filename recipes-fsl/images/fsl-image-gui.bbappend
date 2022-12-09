SUMMARY = "bitbake-layers recipe"
DESCRIPTION = "Recipe created by bitbake-layers"
LICENSE = "MIT"

add_my_files() {
    cp -ar ../sources/meta-customimage/recipes-fsl/images/files/*  ${IMAGE_ROOTFS}/
}
display_banner() {
    echo "***********************************************"
    echo "*                                             *"
    echo "*  Example recipe created by bitbake-layers   *"
    echo "*                                             *"
    echo "***********************************************"

    echo -n "Updating font cache ..."
	fc-cache -f > /dev/null
	echo "Done."
}

ROOTFS_POSTPROCESS_COMMAND += "display_banner;"
ROOTFS_POSTPROCESS_COMMAND += "add_my_files;"

