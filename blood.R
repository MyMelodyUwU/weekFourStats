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

blood.dat = read.table("bloodKathy.txt", header=TRUE)

summary(blood.dat)

head(blood.dat)
attach(blood.dat)
#give first 10
z = 23.86

# t.test(blood.dat, data = blood.dat)
t.test(blood.dat$selen, mu = z, conf.level = 0.95, alternative = "less")
t.test(blood.dat$selen, mu = z, conf.level = 0.95, alternative = "less")$statistic
pValue <- t.test(blood.dat$selen, mu = z, conf.level = 0.95, alternative = "less")$p.value
pValue

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

# --------------------------------------------------

u = 23.86

qt(p=.05/2, df=28, lower.tail=FALSE)


CI <- t.test(blood.dat$selen, mu = u, conf.level = 0.95)$conf.int
CI

qt(p=.15/2, df=28, lower.tail=FALSE)

SevenCI <- t.test(blood.dat$selen, mu = u, conf.level = 0.85)$conf.int
SevenCI









