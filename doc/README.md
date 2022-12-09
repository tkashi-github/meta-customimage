# やること
## repo用のリポジトリの準備
* https://github.com/varigit/variscite-bsp-platform をfork 
* https://github.com/tkashi-github/variscite-bsp-platform にforkした
* bramchは **kirkstone** を選択した。

## Custom Image用のLayer追加
```
$ bitbake-layers create-layer ../sources/meta-customimage
$ bitbake-layers add-layer ../sources/meta-customimage
```
* そのままだとrecipes-exampleになっているのでrecipes-fsl/imagesにリネーム
* bbファイルも **fsl-image-gui.bbappend** にリネーム
* recipes-fsl/images/files/opt/customimageを追加
```

```