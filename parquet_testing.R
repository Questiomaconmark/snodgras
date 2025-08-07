# Packages
# install.packages("arrow")
# install.packages("dplyr")
library(arrow)
library(dplyr)

# pulling full data set
artis_ds <- open_dataset("bailey_stuff/ARITS_1.1.0_FAO_2025_08_02/ARITS_1.1.0_FAO_2025_08_02/datasets/")

# Have the option of splitting data, maybe useful? maybe not

# artis_ds_consumption <- open_dataset("~/bailey_stuff/ARITS_1.1.0_FAO_2025_08_02/ARITS_1.1.0_FAO_2025_08_02/datasets/ARTIS_consumption_v1.1.0_FAO_mid_2025-08-02.parquet")
# artis_ds_trade <- open_dataset("bailey_stuff/ARITS_1.1.0_FAO_2025_08_02/ARITS_1.1.0_FAO_2025_08_02/datasets/ARTIS_trade_v1.1.0_FAO_mid_2025-08-02.parquet")

# viewing the dataset(how many rows/columns and how many database files) with glimpse + viewing the actual rows/columns using names

# glimpse(artis_ds)
# names(artis_ds)

# filtering one column (year) with distinct row values and then viewing it

# column_trade <- artis_ds_trade %>%
#   select(year) %>%
#   distinct() %>%
#   collect()
# 
# column_consumption <- artis_ds_consumption %>%
#   select(year) %>%
#   distinct() %>%
#   collect()
# 
# View(column_consumption)

test_fish <- "pterois volitans"

artis_ds_testfish_filter <- artis_ds %>%
  filter(sciname == test_fish)

artis_ds_csv <- artis_ds_testfish_filter %>%
                collect()

write.csv(artis_ds_csv, "bailey_stuff/snodgras/lionfish.csv", 
          row.names = FALSE)