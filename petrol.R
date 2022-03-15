library("tidyverse")
library("devtools")
library("glue")
library("dplyr")
library("stringr")
library("ggplot2")
library("knitr")
library("ggrepel")
library("patchwork")
library("janitor")
library("usethis")
library("roxygen2")
library("testthat")

petrol = read.table("petrolJin.txt", header=TRUE)

attach(petrol)
str(petrol)
head(petrol)

t.test(petrol$Darwin, petrol$Hobart, var.equal = TRUE, data = petrol)

t.test(petrol$Darwin, petrol$Hobart, var.equal = TRUE, data = petrol)$statistic


pValue <- t.test(petrol$Darwin, petrol$Hobart, var.equal = TRUE, data = petrol)$p.value
pValue

if(pValue < 0.05) {
  print("Reject")
} else {
  print("Do Not Reject")
}

if(pValue < 0.005) {
  print("Reject")
} else {
  print("Do Not Reject")
}

# --------------------------------------------------------

u = 42

qt(p=.05/2, df=u, lower.tail=FALSE)


CI <- t.test(petrol$Darwin, petrol$Hobart, conf.level = 0.95, var.equal = TRUE, data = petrol)$conf.int
CI

qt(p=.07/2, df=u, lower.tail=FALSE)

nineCI <- t.test(petrol$Darwin, petrol$Hobart, conf.level = 0.93, var.equal = TRUE, data = petrol)$conf.int
nineCI




