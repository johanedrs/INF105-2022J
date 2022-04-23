#################NOM   PRENOM  CODE
#### préparé par Theyo DESTIN DE170606
####             Karen JEAN-BAPTISTE JE185456 
####             Darius Johane DA181749 
##               philipe kesny  PH170300



library(readxl)
library(openxlsx)
library(tidyverse)
library(dplyr)
library(ggplot2)
###Creer un projet sur Rstudio###
HT <- read_excel("C:/Users/mes enfants/Desktop/Project2/NEWPROJECT/HT.xlsx")### LIRE LE PROJET ####
HT### BALANCER LE PROJET ####
View(HT)


W=GROSS SAVINGS
ANS = ANNEES
w<-HT[49,47:67] ### CHOISIR UN ELEMENT DANS LE FICHIER EXCEL ( GROSS SAVINGS[% OF GDP])
w  ### CHOISIR UN ELEMENT DANS LE FICHIER EXCEL
w<-as.numeric(w) ### CHOISIR UN ELEMENT DANS LE FICHIER EXCEL
w

ans<-a[3,47:67]
ans
ans<-as.numeric(ans)
ans

DF<-data.frame(ans,w)
DF
 ######  AFFICHER LA FIGURE 2.4 DU PROJET #########
    

plot(DF, xlab ="ans",ylab ="w",type="l",lwd=1,main="Ratio des réserves liquides des banques sur leurs actifs (%)",col="green")
abline(v = c(2008,2010,2015,2016,2020), col="red", lwd=1, lty=2, c("Crise financi?re internationale", "Tremblement de terre", 
"BIC op?rationnel","Cyclonne Matthieu", "COVID-19"),col="black", lwd=1, lty=2)

abline(v=c("Crise financi?re internationale", "Tremblement de terre", 
   "BIC op?rationnel","Cyclonne Matthieu", "COVID-19"),col="black", lwd=1, lty=2)






Z=NUMBER OF INFANT DEATHS
BNS= ANNEES

 
z<-HT[91,47:67] ### CHOISIR UN ELEMENT DANS LE FICHIER EXCEL (NUMBER OF INFANT DEATHS)
z             ### CHOISIR UN ELEMENT DANS LE FICHIER EXCEL
z<-as.numeric(w) ### LES VALEURS NUMERIQUES DE NUMBER OF INFANT DEATHS ###
z     ####  BALANCER LES VALEURS NUMERIQUES DE NUMBER OF INFANT DEATHS ####

bns<-HT[3,47:67]
bns     
bns<-as.numeric(ans)
bns

tablo<-data.frame(bns,z)
tablo



library(tidyverse)
library(ggplot2)
plot(bns,z, xlab ="ANNEES",ylab ="z",type="l",lwd=1,main="taux de mortalite",col="green")+
abline(v=2010,type="l",col="green")
abline(v=2005,b=2015,type="l",col="red")
abline(v=2015,b=2015,type="l",col="red")
####figure 3.1







