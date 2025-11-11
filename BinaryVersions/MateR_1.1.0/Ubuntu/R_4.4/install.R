#Install needed packages
list.of.packages <- c("doParallel",
                      "foreach",
                      "devtools",
                      "httr",
                      "jsonlite")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)


if (!("TrainSel" %in% installed.packages()[,"Package"])) {
  #Install TrainSel
  library(devtools)
  install_github("TheRocinante-lab/TrainSel")
}
#If TrainSel installation fails, you can find help in https://github.com/TheRocinante-lab/TrainSel
#To obtain TrainSel license keys, please contact j.isidro@upm.es.
#Free license keys will be provided to public bodies, 
#such as, Universities, and non-profit organizations.


#Install MateR package itself
install.packages("./MateR_1.1.0_R_x86_64-pc-linux-gnu.tar.gz", repos = NULL, type = "binary")
library(MateR)
?GenomicMatingMT
