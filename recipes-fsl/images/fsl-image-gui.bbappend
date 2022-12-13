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
delete_opt() {
    # delete /opt
    rm -rf ${IMAGE_ROOTFS}/opt/g2d_samples
    rm -rf ${IMAGE_ROOTFS}/opt/viv_samples
    rm -rf ${IMAGE_ROOTFS}/usr/share/examples
}

ROOTFS_POSTPROCESS_COMMAND += "display_banner;"
ROOTFS_POSTPROCESS_COMMAND += "add_my_files;"
ROOTFS_POSTPROCESS_COMMAND += "delete_opt; "

PACKAGE_EXCLUDE += "googlebenchmark"
PACKAGE_EXCLUDE += "bonnie"
#PACKAGE_EXCLUDE += "cpuburn"
#PACKAGE_EXCLUDE += "dbench"
#PACKAGE_EXCLUDE += "dhrystone"
#PACKAGE_EXCLUDE += "fio"
PACKAGE_EXCLUDE += "glmark2"
#PACKAGE_EXCLUDE += "iozone3"
#PACKAGE_EXCLUDE += "iperf2"
#PACKAGE_EXCLUDE += "iperf3"
#PACKAGE_EXCLUDE += "libc-bench"
#PACKAGE_EXCLUDE += "libhugetlbfs"
#PACKAGE_EXCLUDE += "linpack"
#PACKAGE_EXCLUDE += "lmbench"
#PACKAGE_EXCLUDE += "mbw"
#PACKAGE_EXCLUDE += "memtester"
#PACKAGE_EXCLUDE += "nbench-byte"
#PACKAGE_EXCLUDE += "phoronix-test-suite"
#PACKAGE_EXCLUDE += "qperf"
#PACKAGE_EXCLUDE += "s-suite"
#PACKAGE_EXCLUDE += "stressapptest"
#PACKAGE_EXCLUDE += "sysbench"
#PACKAGE_EXCLUDE += "tinymembench"
#PACKAGE_EXCLUDE += "tiobench"
#PACKAGE_EXCLUDE += "whetstone"
