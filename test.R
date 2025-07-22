library(tidyverse)
library(exploreARTIS)

csv <- read.csv("~/bailey_stuff/snodgras/artis_request_snodgrass.csv")

colnames(csv)

plot <- plot_bar(
  data = csv,
  bar_group = "exporter_iso3c",
  value = "live_weight_t",
  top_n = 10,
  x.lab = "Export weight (t)",
  y.lab = "Country (ISO3)",
  plot.title = "Top exporting countries",
)
plot <- plot + ggplot2::ggtitle("Top exporting countries")


print(plot)