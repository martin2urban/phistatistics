#datacamp exploring categorical data comics0
library(dplyr)
a=as.data.frame(c(10,2))
a %>% count
a %>% levels(a)
#--Environment----
library(data.table)
#library(magrittr)    #dplyr automatically loads magrittr
library(plyr)
library(dplyr)
library(reshape)
library(tidyr)
library(ggplot2)
install.packages("ggplot2")


setwd("H:/GoogleDrive/VIMdb/Projects/PHIbase/Phi45")
#--MAIN---------------------------------------------------------
phi=read.csv("phi45.csv", stringsAsFactors=TRUE, strip.white=TRUE)
str(phi)
levels(phi$Phenotype_of_mutant)
levels(phi$Pathogen_species)
table(phi$Pathogen_species,phi$Phenotype_of_mutant)
ggplot(phi, aes(x=Phenotype_of_mutant, fill=Pathogen_species)) + geom_bar()

setwd("H:/GoogleDrive/VIMdb/Projects/R_statistics/DataCampR/ExploreCategoricalData")

marvel=read.csv("marvel-wikia-data.csv", stringsAsFactors=TRUE, strip.white=TRUE)
levels(comics$ALIGN)
comics
levels(comics$ID)
str(comics)
#contingency table
table(comics$SEX, comics$ALIGN)
dc=read.csv("dc-wikia-data.csv", stringsAsFactors=TRUE, strip.white=TRUE)
levels(dc$ALIGN)
comics
levels(dc$ID)
str(comics)
table(dcNew$ID, dcNew$ALIGN)
#drop factor with no few counts
dcNew1=dc %>% filter(ALIGN !="Reformed Criminals") %>% droplevels()
dcNew2=dcNew1 %>% filter(ID !="Identity Unknown") %>% droplevels()
table(dcNew2$ID, dcNew2$ALIGN)

# Load ggplot2


# Create side-by-side barchart of gender by alignment
ggplot(comics, aes(x = ___, fill = ___)) + 
  geom_bar(position = ___)

ggplot(dcNew2, aes(x = ALIGN, fill = SEX)) + 
  geom_bar(position="dodge") 
ggplot(dcNew2, aes(x = ALIGN, fill = SEX)) + 
  geom_bar() 


# Load ggplot2
library(ggplot2)

# Create side-by-side barchart of gender by alignment
ggplot(comics, aes(x = align, fill = gender)) + 
  geom_bar(position = "dodge")

# Create side-by-side barchart of alignment by gender
ggplot(comics, aes(x = gender, fill = align)) + 
  geom_bar(position="dodge") +
  theme(axis.text.x = element_text(angle = 90))

#proportions
tab <- table(comics$ALIGN, comics$SEX)
options(scipen = 999, digits = 3) # Print fewer digits
prop.table(tab)     # Joint proportions
prop.table(tab, 2)  # Conditional on columns

p=read.csv("pathdata.csv", stringsAsFactors=TRUE, strip.white=TRUE)
str(p)
names(p)=c("organism","phenotypes")
table(p$organism, p$phenotypes)
ggplot(p, aes(x = organism, fill = phenotypes)) + 
  geom_bar(position = "dodge")
#proportions
tab <- table(p$organism, p$phenotypes)
options(scipen = 999, digits = 3) # Print fewer digits
prop.table(tab)     # Joint proportions
prop.table(tab, 2)  # Conditional on columns
# Plot of gender by align
ggplot(comics, aes(x =align, fill = gender)) +
  geom_bar()

# Plot proportion of phenotypes, conditional on organisms
ggplot(p, aes(x = organism, fill = phenotypes)) + 
  geom_bar(position = "fill") +
  ylab("proportion")


# Change the order of the levels in align
p$phenotyes <- factor(p$phenotypes, 
                       levels = c("unaffected", "reduced", "loss"))

# Create plot of phenotypes
ggplot(p, aes(x = phenotypes)) + 
  geom_bar()





