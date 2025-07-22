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
in our code we have 2 variables sciname_metadata and artis request. I thought we had it figured out but sciname_metadata expects a genus column which confuses me. I think artis request is supposed to be the big csv file and sciname_metadata is after we have done some filtering (like maybe adding genus column from sciname?) I dont know and im not familiar enough with the data to know if we arent just missing something
