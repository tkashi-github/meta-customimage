FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
# パッチファイルは <パッケージ名>-<バージョン>/ ディレクトリ以下に置きます。
# https://yoctobbq.lineo.co.jp/?q=node/358 Yocto3.4から変数に対する上書き指定の書式が変更になります

SRC_URI += " \
            file://defconfig \
            file://imx8mp-var-dart-dt8mcustomboard-custom.dts \
"

KBUILD_DEFCONFIG_imx8mp-var-dart = ""

KERNEL_DEVICETREE += "freescale/imx8mp-var-dart-dt8mcustomboard-custom.dtb"

do_configure:append(){
    cp ${WORKDIR}/*.dts ${S}/arch/arm64/boot/dts/freescale/

    sed -i -e '/dtb-$(CONFIG_ARCH_MXC) += imx8mp-var-dart-dt8mcustomboard-m7-custom.dtb/d' ${S}/arch/arm64/boot/dts/freescale/Makefile
    echo 'dtb-$(CONFIG_ARCH_MXC) += imx8mp-var-dart-dt8mcustomboard-m7-custom.dtb' >> ${S}/arch/arm64/boot/dts/freescale/Makefile
    
    sed -i -e '/dtb-$(CONFIG_ARCH_MXC) += imx8mp-var-dart-dt8mcustomboard-legacy-m7-custom.dtb/d' ${S}/arch/arm64/boot/dts/freescale/Makefile
    echo 'dtb-$(CONFIG_ARCH_MXC) += imx8mp-var-dart-dt8mcustomboard-legacy-m7-custom.dtb' >> ${S}/arch/arm64/boot/dts/freescale/Makefile
}
