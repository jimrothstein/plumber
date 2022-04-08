# file <- "002_plumber_second_start.R"

# =========================
    #       SET ENDPOINTS
# =========================
#
## REF:     https://rviews.rstudio.com/2018/07/23/rest-apis-and-plumber/

#* @apiTitle Simple API

#* Echo provided text
#* @param text The text to be echoed in the response
#* @get /echo
function(text = "") {
  list(
    message_echo = paste("The text is:", text)
  )
}


#* @param text The text to be echoed in the response
#* @get /talk
#
function(text = "") {
  list(
    message_talk =  paste("I am talking")
)
}

# ==============
#    ADD FILTER
# ==============

#* Log some information about the incoming request (displays on console)
#* @filter logger
#
function(req){
  cat(as.character(Sys.time()), "-",
    req$REQUEST_METHOD, req$PATH_INFO, "-",
    req$HTTP_USER_AGENT, "@", req$REMOTE_ADDR, "\n")
  plumber::forward()
}

# ======================
# START PLUMBER SERVER
# ======================
#
#at console:
#   plumber::plumb("002_plumber_second_start.R")$run(port = 5762)
#
#in browser:
#   http://127.0.0.1:5762/echo?text=hi
#
# curl, use quotes
#    curl localhost:5762/echo
#    curl "localhost:5762/echo?text=hello"
# 
#   curl "localhost:5762/talk?text"

# documentation this code
# http://127.0.0.1:5762/__docs__/
