library(dplyr)
library(exploreARTIS)

# CSV created in parquet_testing
lionfish_data <- read.csv("bailey_stuff/snodgras_capstone_scripts/lionfish_testing/lionfish.csv")

# ExploreArtis package not updated for new data labels so this is correcting the new data with old labels
#

plot_ts(lionfish_data, artis_var = "consumption_live_t")