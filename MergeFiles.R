MergeFiles <- function(path1, path2){
    
    ## reading the tabled using fread function in data.table package.
    file1 <- fread(path1)
    file2 <- fread(path2)
    
    ## merging two files row wise, so using rbind function.
    mergedFile <- rbind(file1, file2)
    
    ## returning merged value to the caller back
    mergedFile
}