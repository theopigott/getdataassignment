# Smartphone Accelerometer Data README

The R script `run_analysis.R` merges the testing and training datasets from the original dataset at the [UCI repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). This original data should be contained in a folder called `data` in the current working directory when running the script. 

After merging the two datasets, the script keeps only the mean and standard deviation measurments. Then the script uses the `group_by` and `summarise_each` methods from the `dplyr` package to group the observations by subject and activity, averaging over all such observations in each group.

The resultant tidy dataset (in *wide* or *unstacked* format) is output to `smartphoneData.txt` as a table. The data can be imported into R again with the command `read.table("tidyData.txt", header = TRUE)`.