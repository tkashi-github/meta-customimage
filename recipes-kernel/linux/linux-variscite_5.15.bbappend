FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
# パッチファイルは <パッケージ名>-<バージョン>/ ディレクトリ以下に置きます。
# https://yoctobbq.lineo.co.jp/?q=node/358 Yocto3.4から変数に対する上書き指定の書式が変更になります

SRC_URI += " \
            file://defconfig \
            file://0001-add-imx8mp-var-dart-dt8mcustomboard_custom.dtb-to-ma.patch \
            file://0001-add-imx8mp-var-dart-dt8mcustomboard_custom.dts.patch \
"
KBUILD_DEFCONFIG_imx8mp-var-dart = ""
