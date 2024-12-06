# Set up Page 




# a script for installing or loading packages for this project.

packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

# Create a string of package names
packages <- c('tidyverse',
              'rmarkdown',
              'ggridges',
              'dataRetrieval',
              'readr',
              'snotelr',
              'sf',
              'terra',
              'tmap',
              'tigris',
              'elevatr',
              'soilDB',
              'rgbif')


# Use the packageLoad function we created on those packages
packageLoad(packages)
