# 2022/12/XX

下記環境でビルド。もとは

```
$ repo init -u https://github.com/tkashi-github/variscite-bsp-platform -b kirkstone_Custom -m kirkstone-5.15.xml
（$ repo init -u https://github.com/varigit/variscite-bsp-platform.git -b refs/tags/mx8mp-yocto-kirkstone-5.15-2.0.x-v1.1 -m kirkstone-5.15.xml 相当です）
$ repo sync -j$(nproc)
...
$ MACHINE=imx8mp-var-dart DISTRO=fslc-wayland . var-setup-release.sh build_wayland
$ bitbake fsl-image-gui
```

```
$ bitbake nodejs
```
でoe_runmakeがfailになる。VMのRAMを24GBにしたらOKになった


# 2022/12/16
[SWUpdate](https://variwiki.com/index.php?title=SWUpdate_Guide&release=mx8mp-yocto-kirkstone-5.15-2.0.x-v1.0) を参考に

```
$ bitbake var-image-swupdate
```
を実行したところ、tar.gzファイルの内容に差異が出た。var-image-swupdateのほうはfsl-image-gui.bbappendが適用されていないように見える。
```
tkashi@tkashi-ubuntu2004:/opt/var-fsl-yocto/build_wayland$ ls -al ./tmp/deploy/images/imx8mp-var-dart/var-image-swupdate-imx8mp-var-dart-*.rootfs.tar.gz 
-rw-r--r-- 2 tkashi tkashi 1018738808 12月 16 13:45 ./tmp/deploy/images/imx8mp-var-dart/var-image-swupdate-imx8mp-var-dart-20221216043902.rootfs.tar.gz
tkashi@tkashi-ubuntu2004:/opt/var-fsl-yocto/build_wayland$ ls -al ./tmp/deploy/images/imx8mp-var-dart/fsl-image-gui-*.rootfs.tar.gz
-rw-r--r-- 2 tkashi tkashi 420049401 12月 16 13:31 ./tmp/deploy/images/imx8mp-var-dart/fsl-image-gui-imx8mp-var-dart-20221216042458.rootfs.tar.gz
tkashi@tkashi-ubuntu2004:/opt/var-fsl-yocto/build_wayland$ 
```
