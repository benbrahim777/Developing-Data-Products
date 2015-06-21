Simple Dataset Viewer
========================================================
author: Samuel sam
date: 2015

Why Dataset Viewer ???
========================================================
Many persons spend times to find out information in some datasets. by using this web application, every one can quickly have a look to datasets.
Another potential use of this web application is sorting and searching elements in datasets.


Data
========================================================
The data was included in R datasets (with the library MASS) and presented into a useful format using R and  px packages.



Example of dataset content (EuStockMarkets heading rows):


```r
head(EuStockMarkets)
```

```
         DAX    SMI    CAC   FTSE
[1,] 1628.75 1678.1 1772.8 2443.6
[2,] 1613.63 1688.5 1750.5 2460.2
[3,] 1606.51 1678.6 1718.0 2448.2
[4,] 1621.04 1684.1 1708.1 2470.4
[5,] 1618.16 1686.6 1723.1 2484.7
[6,] 1610.61 1671.6 1714.3 2466.8
```



Using the App
========================================================
 
- For Animals dataset, we can filter (in the left pane) columns to show their contents. 
             
- We can sort all dataset (Animals, EuStockMarkets and CO2) by selecting the sorting arrows.

- We can display different number of rows per page.    


About
========================================================

This web application is part of the Coursera's class on Developing Data Products. 

It uses data available in R Mass library.

It is a R application hosted by shiny apps at https://benbrahim777.shinyapps.io/peerProject
