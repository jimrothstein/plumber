#   file <- "simple_plumb.R#"
#
# =========================
#       SIMPLEST PLUMB
#       PURPOSE:  simple API, endpoints and simple filter (to log)
#
#       USAGE:    At console or separate file, pr(file="...") |> pr_run() 
# =========================
#
#
#
#
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

