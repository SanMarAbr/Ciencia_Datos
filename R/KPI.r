library(readr)
library(tidyverse)

# Carga de documento
KPI <- readr::read_csv (file = "C:\\Cursos\\Ciencia_Datos\\R\\KPI.CSV",  locale=locale(encoding="latin1"))
# Obtiene los datos a dimensiones de la matriz
dimensiones <- dim(KPI)
# Obtiene una vista previa del archivo csv
vista_previa <- head(KPI)

resumen <- summary(KPI)
#Inspecciona la estructura del data frame
estructura <- capture.output(str(KPI))

print(dimensiones)
print(resumen)
print(vista_previa)
print(estructura)

mtransacciones <- KPI %>%
    filter(Trans >= 42)

print(mtransacciones)

ggplot(KPI, aes(x = User, y = Trans)) + geom_bar(stat = "identity")

view(KPI)

