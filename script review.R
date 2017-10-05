### Coastal urban ecology review ### 
#https://cran.r-project.org/web/packages/bibliometrix/vignettes/bibliometrix-vignette.html

##The bibliographic search was performed with ISI Web of Science (https://webofknowledge.com/), 
## Eligibility criteria included any article or review with the following keywords in topic:
##(urban ecology or urban environment*) and (coast* or marine) 
##period of time: 1975-2016
##Response: 


install.packages("bibliometrix")
library("bibliometrix", lib.loc="~/R/win-library/3.4")

## bibliometrix
## A R tool for comprehensive bibliometric analysis of scientific literature
## by Massimo Aria & Corrado Cuccurullo
## http:\\www.bibliometrix.org

###leer las citas grabadas desde ISI WOK
referencias <- readFiles("http://www.bibliometrix.org/datasets/savedrecs.bib")

###convertir referencias en un data frame
M <- convert2df(referencias, dbsource = "isi", format = "bibtex")

##Bibliometrics analysis
results <- biblioAnalysis(M, sep = ";")
S=summary(object = results, k = 10, pause = FALSE)
plot(x = results, k = 10, pause = FALSE)
