# file <- "plumber_start.R"

## REF:     https://rviews.rstudio.com/2018/07/23/rest-apis-and-plumber/
##

# ================
##  START SERVER  AND LOAD in API in file 
# ================
#
library(plumber)
plumber::plumb("~/code/plumber/100_plumb.R")$run(port = 5762)
    


# =======================
##  OR START at console
# =======================
#
#at console:
#   plumber::plumb("002_plumber_second_start.R")$run(port = 5762)
#
#in browser:
#   http://127.0.0.1:5762/echo?text=hi
