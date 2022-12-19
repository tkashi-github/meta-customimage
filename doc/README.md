# やること
## repo用のリポジトリの準備
* https://github.com/varigit/variscite-bsp-platform をfork 
* https://github.com/tkashi-github/variscite-bsp-platform にforkした
* bramchは **kirkstone** を選択した。

## Custom Image用のLayer追加
### fsl-image-gui.bbappend
```
$ bitbake fsl-image-gui
```
fsl-image-gui用。fsl-image-gui-imx8mp-var-dart.tar.gzが生成物。rootfsにファイルを追加する場合はcustomimage.incとfilesを変更すること。

* bitbake-layersの使い方
```
$ bitbake-layers create-layer ../sources/meta-customimage
$ bitbake-layers add-layer ../sources/meta-customimage
```
* そのままだとrecipes-exampleになっているのでrecipes-fsl/imagesにリネーム
* bbファイルも **fsl-image-gui.bbappend** にリネーム
* recipes-fsl/images/files/opt/customimageを追加

### var-image-swupdate.bbappend
```
$ bitbake var-image-swupdate
$ bitbake var-image-swu
```
var-image-swu/swupdate用。var-image-swupdate-imx8mp-var-dart.tar.gzとvar-image-swu-imx8mp-var-dart.swuが生成物

### linux-variscite_5.15.bbappend
```
$ bitbake linux-variscite
```
linux-variscite用。おもにdefconfig用。

### TODO u-boot

u-boot用。bootコマンドにRTOSのロードを仕込む予定

