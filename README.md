# WSL2AsciidocTemplate
Asciidoc Documentation with WSL2 and Docker




# 準備

-  WSL2 から DOSファイルアクセス：/mnt/
https://qiita.com/Uchitaso/items/6e0a7859e87bb8bdb527

- Windows からWSL2を呼ぶ：wsl hogefuga




## Ubunntu 環境でのInstallation
 
- Installation
```
sudo service docker start
docker run -it --rm asciidoctor/docker-asciidoctor 
```

- Compile Your documents 

```
docker run -it -v <your directory>:/documents/ asciidoctor/docker-asciidoctor asciidoctor <sample.adoc>
```


- Check current folder

```
$ docker run -it --rm asciidoctor/docker-asciidoctor pwd
/document
```

- Test code from CMD

```
wsl docker run -it -v $(pwd):/documents/ asciidoctor/docker-asciidoctor asciidoctor sample.adoc
```
