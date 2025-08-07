library(tidyverse)
library(exploreARTIS)

# CSV created in parquet_testing
lionfish_csv_path <- "c:/Users/John/bailey_stuff/snodgras_capstone_scripts/lionfish_testing/lionfish_consumption.csv"
lionfish_data <- read.csv(lionfish_csv_path)
lionfish_data_filtered <- lionfish_data %>%
  filter(source_country_iso3c == "USA")

# lionfish_graph <- plot_ts(lionfish_data_filtered, artis_var = "importer_iso3c")

lionfish_graph <- plot_ts(lionfish_data_filtered, artis_var = "consumer_iso3c", value = "consumption_live_t", prop_flow_cutoff = .01)

lionfish_graph <- lionfish_graph +
  geom_vline(xintercept = 2016.99, linetype = "dotted", color = "red")

print(lionfish_graph)
