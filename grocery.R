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

grocery.dat = read.table("groceryTwo.txt", header=TRUE)

summary(grocery.dat)

head(grocery.dat)
attach(grocery.dat)

testStat <- t.test(grocery.dat$Monday, grocery.dat$Friday, paired = TRUE)$statistic
testStat
pValue <- t.test(grocery.dat$Monday, grocery.dat$Friday, paired = TRUE)$p.value
pValue

t.test(grocery.dat$Monday, grocery.dat$Friday, paired = TRUE)


if(pValue < 0.05) {
  print("Reject")
} else {
  print("Do Not Reject")
}

if(pValue < 0.01) {
  print("Reject")
} else {
  print("Do Not Reject")
}

NineFiveCI <- t.test(grocery.dat$Monday, grocery.dat$Friday, conf.level = 0.95, paired = TRUE)$conf.int
NineFiveCI

EigthtOne <- t.test(grocery.dat$Monday, grocery.dat$Friday, conf.level = 0.87, paired = TRUE)$conf.int
EigthtOne
