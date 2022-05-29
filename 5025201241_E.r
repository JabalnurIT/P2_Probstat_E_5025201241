# 1. Penelitian Kadar Saturasi Oksigen
x <- c(78,75,67,77,70,72,28,74,77)
y <- c(100,95,70,90,90,90,89,90,100)

# a. Standar Deviasi
cat(sprintf("No 1.a Standar Deviasi data X -> %f, Y -> %f", sd(x), sd(y)))

# b. Nilai t (p-value)
t.test(x, y, alternative = "greater", var.equal = FALSE)

# c. Pengaruh aktivitas terhadap kadar oksigen sebelum dan sesudah
var.test(x, y)
t.test(x, y, mu = 0, var.equal = TRUE)

# 2. Rata-rata Kecepatan Mobil Per-Tahun
# a. Penjelasan di ReadMe
# b. Maksud Output
library(BSDA)
rata_rata <- 23500
standar_deviasi <- 3900
pemilik_mobil <- 100

tsum.test(
  mean.x = rata_rata, 
  sd(standar_deviasi), 
  n.x = pemilik_mobil, 
  var.equal = TRUE)

# c. Kesimpulan berdasarkan p-value
dt.mean <- 235000
dt.a <- 20000
dt.sd <- 3900
dt.n <- 100
z <- (dt.mean-dt.a)/(dt.sd/sqrt(dt.n))
2*pnorm(-abs(z))

# 3. Perusahaan dan Data Analyst
# a. H0 dan H1
bandung.n <- 19
bandung.mean <- 3.64
bandung.sd <- 1.67
bali.n <- 27
bali.mean <- 2.79
bali.sd <- 1.32
a <- 0

bandung.z <- (bandung.mean-a)/(bandung.sd/sqrt(bandung.n))
bali.z <- (bali.mean-a)/(bali.sd/sqrt(bali.n))

cat(sprintf("No 3.a Nilai H0  -> %f, Nilai H1 -> %f", bandung.z, bali.z))

# b. Sampel Statistik
tsum.test(
  mean.x = bandung.mean, 
  s.x = bandung.sd, 
  n.x = bandung.n, 
  mean.y = bali.mean, 
  s.y = bali.sd, 
  n.y = bali.n,
  alternative = "greater", 
  var.equal = TRUE
)

# c. Uji Statistik (df=2)
library(mosaic)
df <- 2
plotDist(dist = 't', df = df)

# d. Nilai Kritikal
alpha <- 0.05
df <- 2
result <- qchisq(p = alpha, df = df, lower.tail = FALSE)
cat(sprintf("No 3.d Nilai Kritikal -> %f", result))

# e. Keputusan
critical <- result
statistic <- 3.64 + 2.79

critical < statistic
# f. Penjelasan di Readme

# 4. Peneliti Kucing di ITS
# a. Kelompok Spesies Kucing dan Plot Kuantil Tiap Kelompok
library(ggplot2)
oneWayData  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"), header=TRUE)
oneWayData$Group = factor(oneWayData$Group,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih"))
class(oneWayData$Group)
g1 <- subset(oneWayData, Group == "Kucing Oren")
g2 <- subset(oneWayData, Group == "Kucing Hitam")
g3 <- subset(oneWayData, Group == "Kucing Putih")
ggplot(
  data = g1, 
  aes(sample = Length)
) + geom_qq()
ggplot(
  data = g2, 
  aes(sample = Length)
) + geom_qq()
ggplot(
  data = g3, 
  aes(sample = Length)
) + geom_qq()

# b. Homogeneity of variances
bartlett.test(Length ~ Group, data = oneWayData)

# c. Uji ANOVA
qqnorm(g1$Length)
qqline(g1$Length)

# d. Penjelasan di Readme
# e. Post-hoc test Tukey HSD
model <- lm(Length~Group, data = oneWayData)
anova(model)
TukeyHSD(aov(model))

# f. Visualisasi
ggplot(
  oneWayData, 
  aes(x = Group, y = Length)) + geom_boxplot(colour = "black") + scale_x_discrete() + xlab("Species") + ylab("Length")

# 5. Tabung Osiloskop
library(ggplot2)
library(readr)
library(dplyr)
library(multcompView)
# a. Plot Sederhana
id <- "1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ"
dt <- read.csv(sprintf("https://docs.google.com/uc?id=%s&export=download", id))
head(dt)
str(dt)
qplot(
  x = Temp, 
  y = Light, 
  geom = "point", 
  data = dt) + facet_grid(.~Glass, labeller = label_both)

# b. Uji Anova Dua Arah
dt$Glass <- as.factor(dt$Glass)
dt$Temp_Factor <- as.factor(dt$Temp)
str(dt)

anova <- aov(Light ~ Glass*Temp_Factor, data = dt)
summary(anova)

# c. Tabel Mean dan Standar Deviasi
tbl <- group_by(dt, Glass, Temp) %>%
  summarise(
    mean = mean(Light), 
    sd = sd(Light)) %>%
  arrange(desc(mean))

print(tbl)

# d. Uji Tukey
anova <- aov(Light ~ Glass*Temp_Factor, data = dt)
print(TukeyHSD(anova))

# e. Compact Letter Display
anova <- aov(Light ~ Glass*Temp_Factor, data = dt)
tukey <- TukeyHSD(anova)

compare_data <- multcompLetters4(anova, tukey)
print(compare_data)

cld <- as.data.frame.list(compare_data$`Glass:Temp_Factor`)
compare_data$Tukey <- cld$Letters
print(compare_data)
