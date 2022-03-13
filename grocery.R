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

grocery.dat = read.table("grocery.txt", header=TRUE)

summary(grocery.dat)

head(grocery.dat)
attach(grocery.dat)

testStat <- t.test(grocery.dat$Monday, grocery.dat$Tuesday, paired = TRUE)$statistic
testStat
pValue <- t.test(grocery.dat$Monday, grocery.dat$Tuesday, paired = TRUE)$p.value
pValue

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

NineFiveCI <- t.test(grocery.dat$Monday, grocery.dat$Tuesday, conf.level = 0.95, paired = TRUE)$conf.int
NineFiveCI

EigthtOne <- t.test(grocery.dat$Monday, grocery.dat$Tuesday, conf.level = 0.81, paired = TRUE)$conf.int
EigthtOne
