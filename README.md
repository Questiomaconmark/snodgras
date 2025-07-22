# Bailers project
Tracking changes to scripts only (data was too large to save)

## artis github
[exploreArtis Github](https://github.com/Seafood-Globalization-Lab/exploreARTIS)

## Extra commands needed to make it work
Follow the instructions in readme of above github and then also make sure to run these in R console
```r
devtools::install_github("davidsjoberg/ggsankey")
install.packages("tidytext")
install.packages("tidyverse")
devtools::install_github("r-lib/conflicted") # https://conflicted.r-lib.org/
```
## Questions for bailers
Looks like the script that you sent was already ran and that is how we have the current csv file. I mean we can use it to filter it down more, but notice the output of the write.csv (same file name as current csv). I made a quick test script and you can see we can already visualize this dataset and it seems to match the species already in that script, and reading docs of filter_bulk_artis.R looks like has been filtered via a range. 
 
## TODO
- Look into pipes (%>% in R)
- Files paths
