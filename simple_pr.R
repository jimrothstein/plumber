
---
title: "`r knitr::current_input()`"
date: "`r paste('last updated', 
    format(lubridate::now(), ' %d %B %Y'))`"
output:   
  html_document:  
        code_folding: show
        toc: true 
        toc_depth: 4
        toc_float: true
  pdf_document:   
    latex_engine: xelatex  
    toc: true
    toc_depth:  4   
fontsize: 11pt   
geometry: margin=0.4in,top=0.25in   
TAGS:  regression
---
# ~/code/MASTER_INDEX.md
#
# =====================================
    simplest router,   1 endpoint /hi
# =====================================
#
library(plumber)
pr() %>%
  pr_get("/hi", function() "Hello World") %>%
  pr_run()



 
