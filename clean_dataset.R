#rm(list = ls())
library(readr)
library(lattice)


#cleaning thee dataset
state_3 <- read_csv("https://raw.githubusercontent.com/paOne0611/NFHS_Orphans/main/Statewise_Data/Orphanhood_statewise_NFHS_3.csv")
state_4 <- read_csv("https://raw.githubusercontent.com/paOne0611/NFHS_Orphans/main/Statewise_Data/Orphanhood_statewise_NFHS_4.csv")
state_5 <- read_csv("https://raw.githubusercontent.com/paOne0611/NFHS_Orphans/main/Statewise_Data/Orphanhood_statewise_NFHS_5.csv")

c_state_3=state_3[3:31,]
c_state_4=state_4[3:31,]
c_state_5=state_5[3:31,]

c_state_3$Total=NULL
c_state_4$Total=NULL
c_state_5$Total=NULL
c_state_4$State=NULL
c_state_5$State=NULL

x3=c("state_ut","not_orph.3","FA.3","FD.3","MA.3","MD.3","BA.3","only_MA.3","only_FA.3","BD.3","PWOBPD.3")
x4=c("not_orph.4","FA.4","FD.4","MA.4","MD.4","BA.4","only_MA.4","only_FA.4","BD.4","PNLWBP.4","PWOBPD.4")
x5=c("not_orph.5","FA.5","FD.5","MA.5","MD.5","BA.5","only_MA.5","only_FA.5","BD.5","PNLWBP.5","PWOBPD.5")

colnames(c_state_3)=x3
colnames(c_state_4)=x4
colnames(c_state_5)=x5

###

#combining the data from NFHS 3,4 and 5 into one dataframe
nfhs=data.frame(c_state_3,c_state_4,c_state_5)















