# png2iOSicons
converts one PNG to several PNGs for iOS icons using ImageMagick

```sh
brew install imagemagick
```

```sh
apt-get install imagemagick
```

```sh
pacman -S imagemagick
```

# Use

```sh
$ ./convertappiconios.sh myApp1024x1024.png
```

# Outputs

```sh
$ exa -lT myApp1024x1024
drwxr-xr-x    - user  4 May 18:47 myApp1024x1024
.rw-r--r-- 2.7k user  4 May 18:47 ├── app_040x040.png
.rw-r--r-- 4.4k user  4 May 18:47 ├── app_058x058.png
.rw-r--r-- 4.6k user  4 May 18:47 ├── app_060x060.png
.rw-r--r-- 6.9k user  4 May 18:47 ├── app_080x080.png
.rw-r--r-- 8.0k user  4 May 18:47 ├── app_087x087.png
.rw-r--r--  13k user  4 May 18:47 ├── app_120x120.png
.rw-r--r--  26k user  4 May 18:47 └── app_180x180.png
```
