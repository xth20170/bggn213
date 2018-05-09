---
title: "Bioinformatics Class 11"
author: "Tianhan Xu"
date: "5/9/2018"
output: 
  html_document: 
    keep_md: yes
---



## PDB statistics

Import out PDB statistics CSV file and calculate precent structure by experimental method

```r
p <- read.csv("Data Export Summary.csv", row.names=1)
```


```r
percent <- (p$Total / sum(p$Total)) *100
names(percent) <- row.names(p)
percent
```

```
##               X-Ray                 NMR Electron Microscopy 
##         89.51673340          8.71321614          1.51239392 
##               Other        Multi Method 
##          0.16986775          0.08778879
```


Q1: What proportion of PDB entries does X-ray crystallography account for? What proportion of
structures are protein?
Q2: Type HIV in the search box on the home page and determine how many HIV-1 protease
structures are in the current PDB?
