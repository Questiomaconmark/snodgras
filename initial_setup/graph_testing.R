library(tidyverse)
library(exploreARTIS)

csv <- read.csv("~/bailey_stuff/snodgras/artis_request_snodgrass.csv")

home_country_consumption <- csv %>%
  filter(source_country_iso3c == importer_iso3c)

home_country_consumption_catfish <- home_country_consumption %>%
  filter("ictalurus punctatus" == sciname)

test <- plot_ts(home_country_consumption_catfish,
  artis_var = "importer_iso3c",
  plot.type = "stacked"
)

print(test)