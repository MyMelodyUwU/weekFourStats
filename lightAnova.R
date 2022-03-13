light = read.table("light.dat", header = TRUE)
#light = read.table(here("subsubfolder","subfolder", "light.dat"), header = TRUE)
# iron = read.table(here("subsubfolder","subfolder", "iron.txt"), header = TRUE)
iron = read.table("iron.txt", header = TRUE)
head(iron)
#means = with(incendat, tapply(Items, Plan, mean))
# sds = with(incendat, tapply(Items, Plan, sd))
# ns = with(incendat, tapply(Items, Plan, length))
# incensummary = data.frame(n = ns, mean = means, sd = sds)
# incensummary
iron.aov = aov(cont
boxplot(content ~ formation, data = iron,
        ylab = "Formation", xlab = "Content")ent ~ formation, data = iron)
boxplot(iron.aov, horizontal = true)

# anova(iron.aov)
# par(mfrow = c(1, 2))
# plot(iron.aov, which = 1:2)

