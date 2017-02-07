+++
title = "Magic of ImageMagick : Command line tool for tiling many images"
description = ""
tags = [
    "Tiling",
 
]
date = "2016-03-04"
categories = [
    "ImageMagick",
]
menu = "main"
+++

Do you play with images? Do you often merge images to create a single image for you research article? There are many softwares ([gimp](https://www.gimp.org/), [inkscape](https://inkscape.org/en/)) by which you can merge images and give a label on top of the images. But if you are looking for a command line tool to merge images one of the best option is [ImageMagick](http://www.imagemagick.org/script/index.php). A very good tutorial for merging images into one image using ImgaeMagick can be found [here](http://www.imagemagick.org/Usage/montage/).


To merge [sphere.png](img/imagemagick/sphere.png), [circle.png](img/imagemagick/circle.png), [box.png](img/imagemagick/box.png) and [cone.png](img/imagemagick/cone.png) the command using montage is


```
montage sphere.png circle.png box.png cone.png -tile 4x1 -geometry +2+2 output.png
```
<br>

![](img/imagemagick/output.png#center)


Here tile gives a layout (in this case 4x1) and geometry gives spaces between images (in this case 2 pixel both in x and y axes).



**To give label to each images:**

```
montage -label Sphere sphere.png -label Circle circle.png -label Box box.png -label 
Cone cone.png -tile 4x1 -geometry +2+2 -pointsize 70 output1.png                    
```
<br>


![](img/imagemagick/output1.png#center)

**Label on top of the image:**

To give a label on top of a image one can use convert command with gravity :


```
convert sphere.png -pointsize 70 -draw "gravity northwest fill black text 10,12 
'a' " sphere1.png                                                               
```
<br>

<img src="img/imagemagick/sphere1.png" width="40%">

And then you can merge all the labelled figures: 

```
montage sphere1.png circle1.png box1.png cone1.png colbar2.png -tile x1 -geometry 
+2+2 output2.png                                                                  
```
<br>
![](img/imagemagick/output2.png#center)







