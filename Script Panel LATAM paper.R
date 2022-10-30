#Read data
library(readxl)
base_panel=read_xlsx(path = "C:/Users/juand/OneDrive/Escritorio/Daniel/datalogARG&EC.xlsx")
library(foreign)
library(carData)
library(car)
library(ggplot2)
x11()
par(mfrow=c(3,3))
scatterplot(co2epik~Año|Pais,boxplots=FALSE, smooth=TRUE, reg.line=FALSE, data=base_panel)
scatterplot(NONREN~Año|Pais,boxplots=FALSE, smooth=TRUE, reg.line=FALSE, data=base_panel)
scatterplot(LOWENER~Año|Pais,boxplots=FALSE, smooth=TRUE, reg.line=FALSE, data=base_panel)
scatterplot(FOR~Año|Pais,boxplots=FALSE, smooth=TRUE, reg.line=FALSE, data=base_panel)
scatterplot(KOFGI~Año|Pais,boxplots=FALSE, smooth=TRUE, reg.line=FALSE, data=base_panel)
scatterplot(AVA~Año|Pais,boxplots=FALSE, smooth=, reg.line=FALSE, data=base_panel)

ggplot(data = base_panel_levels, aes(x = Año, y = co2epik)) +
  geom_line(aes(colour = as.factor(Pais))) +
  geom_smooth(method = "lm", se = F, lty = "dashed") +
  labs(x = "Year",  y = "Gross co2epik") +
  theme(legend.position = "bottom")

