
#Ce devoir a �t� pr�par� par:

#Karen JEAN-BAPTISTE (JE185456) 
#Johane DARIUS (DA181749) 
#Theyo DESTIN (DE170606)
#Kesny PHILIPPE (PH170300)

#Telechargement du package ggplot multistat et Importation du fichier excel


library(ggplot.multistats)

blue<-readxl::read_excel("C:/Users/adelr/Desktop/Joh1.xlsx")
as.numeric(blue$Annees)
blue
blue<-na.omit(blue)
par(mar=c(5.1,4.1,4.1,2.1),xpd=FALSE)



#Graphique 2.4
plot(blue$Annees, blue$Liquidites, type = "l", 
     col="darkgreen", lwd=2,
     ylab="% du PIB",
     xlab="Années",
     sub="NB: Les données proviennent de la Banque Mondiale")

#Ajout de la courbe de tendance
lines(smooth.spline(blue$Annees,blue$Liquidites,spar = 0.575),col="red",lwd=3)

#Ajout des legendes
legend("top", inset=c(-0.01,-0.08),xpd=TRUE, col=c("green", "red"), lwd=2, 
       legend=c("Liquidites", "Tendance"),horiz=TRUE,bty="n")

#Ajout des droites verticales et des textes
text(2007.5,75, "Crise financière internationale",srt=90)
abline(v=c(2008, 2010, 2015, 2016, 2020), lty=2, col="red")
text(2009.5, 66, "Tremblement de terre", srt=90)
text(2014.5, 80, "BIC Opérationnel", srt=90)
text(2015.5, 85, "Cyclone Matthieu", srt=90)
text(2019.5, 90, "Covid-19", srt=90)




#GRAPHIQUE 3.1

plot(blue$Annees, blue$`Pers rem rec`, type = "l", 
     col="darkgreen", lwd=2,
     ylab="% du PIB",
     xlab="Années",
     
    #Ajout du sous-titre
     sub="Source: Graphique réalisé par l'auteur, avec des données annuelles provenant de la Banque Mondiale")

#Ajout des droites verticales et des textes

text(2007.5,15, "Crise financière internationale",srt=90)
abline(v=c(2008, 2010, 2015, 2016, 2020), lty=2, col="red")
text(2009.5, 13, "Tremblement de terre", srt=90)
text(2014.5, 17, "BIC Opérationnel", srt=90)
text(2015.5, 18, "Cyclone Matthieu", srt=90)
text(2019.5, 20, "Covid-19", srt=90)


#Ajout de la bande bleue

rect(2015.1,0,2016,24,border=NA,col="lightblue")







