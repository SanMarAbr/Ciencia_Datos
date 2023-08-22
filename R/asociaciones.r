library(readr)
library(tidyverse)


asociaciones <- readr::read_csv(file = "https://raw.githubusercontent.com/gastonbecerra/curso-intro-r/main/data/asociaciones.csv")

dim(asociaciones)
head(asociaciones, n = 10)

summary(asociaciones)

view(asociaciones)