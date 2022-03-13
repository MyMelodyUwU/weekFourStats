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

blood.dat = read.table("blood.txt", header=TRUE)

summary(blood.dat)

head(blood.dat)
attach(blood.dat)
#give first 10

# t.test(blood.dat, data = blood.dat)
t.test(blood.dat$selen, mu = 29.1, conf.level = 0.95, alternative = "greater")
pValue <- t.test(blood.dat$selen, mu = 29.1, conf.level = 0.95, alternative = "greater")$p.value
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

# --------------------------------------------------

u = 29.1

qt(p=.05/2, df=28, lower.tail=FALSE)


CI <- t.test(blood.dat$selen, mu = u, conf.level = 0.95)$conf.int
CI

qt(p=.25/2, df=28, lower.tail=FALSE)

SevenCI <- t.test(blood.dat$selen, mu = u, conf.level = 0.75)$conf.int
SevenCI









