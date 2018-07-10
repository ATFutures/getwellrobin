pkgs <-  c("gsheet", "emojifont")                                                                 
if(any(!pkgs %in% installed.packages())) {                                                       
  install.packages(pkgs)                                                                           
}  

lapply(pkgs, library, character.only = TRUE)

tbl <- gsheet::gsheet2tbl("https://docs.google.com/spreadsheets/d/1W7sLg0Vh1HGfE_YauW7e1_NSUus70JmDca4kCfmtJtk/edit#gid=1156318106")

# TODO: add respones to the signatures.md
