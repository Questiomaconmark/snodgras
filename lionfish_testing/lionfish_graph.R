library(tidyverse)
library(exploreARTIS)

# CSV created in parquet_testing
lionfish_data <- read.csv("bailey_stuff/snodgras_capstone_scripts/lionfish_testing/lionfish_trade.csv")

lionfish_data_filtered <- lionfish_data %>%
  filter(source_country_iso3c == "USA")

lionfish_graph <- plot_ts(lionfish_data_filtered, artis_var = "importer_iso3c")

lionfish_graph <- lionfish_graph +
  geom_vline(xintercept = 2016.99, linetype= "dotted", color ="red")

print(lionfish_graph)