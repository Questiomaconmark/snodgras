library(tidyverse)
library(exploreARTIS)

csv <- read.csv("~/bailey_stuff/snodgras/artis_request_snodgrass.csv")

catfish_csv <- csv %>%
  filter("ictalurus punctatus" == sciname)

catfish_csv <- catfish_csv %>%
  filter("capture" == method)

catfish_csv$nativity <- ifelse(
  catfish_csv$source_country_iso3c %in% c("USA","CAN","MEX"),
                               'native',
                               'invasive')



write.csv(catfish_csv, "~/bailey_stuff/snodgras/catfish.csv", row.names = FALSE)