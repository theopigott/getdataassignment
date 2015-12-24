# Smartphone Accelerometer Data README

The R script `run_analysis.R` merges data from the testing and training datasets from the original dataset at the [UCI repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) contained in a folder called `data` in the current working directory. Only the mean and standard deviation of each measurement is kept, and the resulting data is grouped by subject and activity with the mean of each variable tabulated.

The tidy dataset is output to `smartphoneData.txt` as a table. The data can be imported into R again with the command
`read.table("tidyData.txt", header = TRUE)`