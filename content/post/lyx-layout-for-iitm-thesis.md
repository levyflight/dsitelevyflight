+++
title = "Create Lyx layout for IIT Madras thesis"
description = ""
tags = [
    "Lyx",
 
]
date = "2017-03-27"
categories = [
    "Latex",
]
menu = "main"
+++

The latex template for IIT Madras PhD thesis can be found [here](https://mat.iitm.ac.in/usefullink.html). This is enough to write your thesis in Latex. But if you prefer to write your thesis in [LyX](https://www.lyx.org/) then you need a layout for IITM thesis class. To create a layout you need to follow the steps below ([suggested here](http://blog.anidear.com/2011/03/lyx-convert-latex-cls-file-to-layout-in.html)): 

1. Download latex template from [here](https://mat.iitm.ac.in/usefullink/iitm_thesis.tar.gz).
2. Untar the tar file 
``` tar xzf iitm_thesis.tar.gz ```
3. Open iitmdiss.cls file and remove compat2 in line number 74. Since compat2 is not supported anymore. 
3. Create a new document class for Latex
 - Go to your main folder of latex. To know the main folder of the latex, you can search article.cls in the / directory.
 - ```{{< highlight go >}} cd \ <br> 
   sudo find -name article.cls {{< /highlight >}}```
 - in my system output is ```./usr/share/texmf-dist/tex/latex/base/article.cls``` . So the location of the main folder of latex is ``` /usr/share/texmf-dist/tex/latex/ ```
 - ``` cd /usr/share/texmf-dist/tex/latex ```
 - Create a new folder "iitmdiss" in this main folder of latex: ``` sudo mkdir iitmdiss ```
 - Copy iitmdiss.cls and iitm.jpg from the downloaded iitm_thesis folder to iitmdiss. 
 - Update latex by ```sudo texhash ```
4. Create a new layout for lyx
  - go to lyx layouts folder. In my system it is ``` /usr/share/lyx/layouts ```
  - create a new file called 'iitmdiss.layout' 
  - open the 'iitmdiss.layout' file and write 
  - ```{{< highlight go >}} #% Do not delete the line below; configure depends on this <br>
    # \DeclareLaTeXClass[iitmdiss]{article (iitmdiss)} <br>  
    # Input general definitions <br>  
    Input stdclass.inc  {{< /highlight >}}```
5. To update this layout in Lyx, you need to reconfigure lyx: Tools --> Reconfigure. Now resatrt the lyx and you will be able to get iitmdiss layout from Document --> Settings... --> Change Document class.






