load("nfhs.RData")
#library(lattice)

#View(nfhs)
#a=subset(nfhs, state_ut=="Arunachal Pradesh")

'''
To find:
Whether majority of orphans have been abandoned by the father or the mother?
'''
#pa: parents alive
pa= nfhs[, c("state_ut","FA.3","MA.3","FA.4","MA.4","FA.5","MA.5")]
#father.pa=nfhs[, c("state_ut","FA.3","FA.4","FA.5")]
#mother.pa=nfhs[, c("state_ut","MA.3","MA.4","MA.5")]

#plot(1:25,pch=1:25)

x11()
par(mfcol=c(3,2))  #mfcol: fills plot columnwise
boxplot(pa$FA.3, ylim=c(0,45), xlab="2005-06", horizontal=TRUE, range=1.5)  
title("% living with mother but not father (alive)")
#range=x; if x is large (small), the tail is large(small). If x=0, tail extends to min and max.
boxplot(pa$FA.4, ylim=c(0,45), xlab="2015-16", horizontal=TRUE)
boxplot(pa$FA.5, ylim=c(0,45), xlab="2019-21", horizontal=TRUE)
#max(pa$MA.5,na.rm = TRUE)
boxplot(pa$MA.3, ylim=c(0,4), xlab="2005-06", horizontal=TRUE)
title("% living with father but not mother (alive)")
boxplot(pa$MA.4, ylim=c(0,4), xlab="2015-16", horizontal=TRUE)
boxplot(pa$MA.5, ylim=c(0,4), xlab="2019-21", horizontal=TRUE)


quantile(pa$MA.3,.5, na.rm=TRUE)
quantile(pa$MA.5,.5, na.rm=TRUE)
#both return the same value

IQR(pa$MA.3, na.rm = TRUE)
IQR(pa$MA.5, na.rm = TRUE)
#both return the same value

summary(pa$MA.3)
summary(pa$MA.5)

quantile(pa$FA.3, .5, na.rm = TRUE)
quantile(pa$FA.5, .5, na.rm = TRUE)
#Father (2019-21) is the majority leaving group

par(mfrow=c(3,1))
boxplot(nfhs$not_orph.3,ylim=c(45,100), xlab="2005-06", horizontal=TRUE)
boxplot(nfhs$not_orph.4,ylim=c(45,100), xlab="2015-16", horizontal=TRUE)
boxplot(nfhs$not_orph.5,ylim=c(45,100), xlab="2019-21", horizontal=TRUE)
#overall orphanhood in the country is decreasing


library(ggplot2)
x11()
ggplot(nfhs, aes(fill=state_ut, y=not_orph.3, x=Region))+geom_bar(position="stack", stat="identity")+ geom_col(na.rm=TRUE)








