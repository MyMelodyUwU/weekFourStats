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

petrol = read.table("petrol.txt", header=TRUE)

attach(petrol)
str(petrol)
head(petrol)

t.test(petrol$Brisbane, petrol$Darwin, var.equal = TRUE, data = petrol)
pValue <- t.test(petrol$Brisbane, petrol$Darwin, var.equal = TRUE, data = petrol)$p.value

if(pValue < 0.05) {
  print("Reject")
} else {
  print("Do Not Reject")
}

if(pValue < 0.025) {
  print("Reject")
} else {
  print("Do Not Reject")
}

# --------------------------------------------------------

u = 42

qt(p=.05/2, df=u, lower.tail=FALSE)

CI <- t.test(petrol$Brisbane, petrol$Darwin, var.equal = TRUE, data = petrol)$conf.int
CI

qt(p=.04/2, df=u, lower.tail=FALSE)

nineCI <- t.test(petrol$Brisbane, petrol$Darwin, conf.level = 0.96, var.equal = TRUE, data = petrol)$conf.int
nineCI




