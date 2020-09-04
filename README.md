# WSL2AsciidocTemplate
Asciidoc Documentation with WSL2 and Docker

環境
- Docker on WSL2 （≠ Docker for windows）
  - Ubuntu 20
  - Docker Version
  
``` CMD
> wsl docker version
Client: Docker Engine - Community
 Version:           19.03.12
 API version:       1.40
 Go version:        go1.13.10
 Git commit:        48a66213fe
 Built:             Mon Jun 22 15:45:44 2020
 OS/Arch:           linux/amd64
 Experimental:      false
```

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


- Check current folder

```
$ docker run -it --rm asciidoctor/docker-asciidoctor pwd
/document
```


- Compile Your documents 

```
docker run -it -v <your directory>:/documents/ asciidoctor/docker-asciidoctor asciidoctor <sample.adoc>
```


- Test compilation from CMD

```
wsl docker run -it -v $(pwd):/documents/ asciidoctor/docker-asciidoctor asciidoctor sample.adoc
```


## Slide generation

Create Slide

https://qiita.com/aki-nasu/items/da7c230e369b11b9ba11


- Base :`asciidoctor-revealjs slide_sample.adoc`
- Complete command is following

```
wsl docker run -it -v $(pwd):/documents/ asciidoctor/docker-asciidoctor asciidoctor-revealjs -a revealjsdir=https://cdnjs.cloudflare.com/ajax/libs/reveal.js/3.9.2 slide_sample.adoc
```


## Math Equation

```
wsl docker run -it -v $(pwd):/documents/ asciidoctor/docker-asciidoctor  asciidoctor -r asciidoctor-mathematical sample.adoc
```


```
wsl docker run -it -v $(pwd):/documents/ asciidoctor/docker-asciidoctor  asciidoctor-pdf -r asciidoctor-mathematical -o sample.pdf sample.adoc
```

