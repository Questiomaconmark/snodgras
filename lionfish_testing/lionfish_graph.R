library(dplyr)
library(exploreARTIS)

# CSV created in parquet_testing
lionfish_data <- read.csv("bailey_stuff/snodgras_capstone_scripts/lionfish_testing/lionfish.csv")

lionfish_data <- lionfish_data[,]

plot_ts(lionfish_data, artis_var = "consumption_live_t")