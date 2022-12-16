# for fsl-image-gui.bbappend

IMAGE_FEATURES += "read-only-rootfs"

add_my_files() {
    cp -ar ../sources/meta-customimage/recipes-fsl/images/files/*  ${IMAGE_ROOTFS}/
}
display_banner() {
    echo "***********************************************"
    echo "*                                             *"
    echo "*  Example recipe created by bitbake-layers   *"
    echo "*                                             *"
    echo "***********************************************"
}
delete_opt() {
    # delete /opt
    rm -rf ${IMAGE_ROOTFS}/opt/imx-gpu-sdk
    rm -rf ${IMAGE_ROOTFS}/opt/imx8-isp
    rm -rf ${IMAGE_ROOTFS}/opt/viv_samples
    rm -rf ${IMAGE_ROOTFS}/opt/ltp
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
