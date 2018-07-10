pkgs = c("stringr", "emojifont")                                                                 
if(any(!pkgs %in% installed.packages())) {                                                       
  install.packages(pkgs)                                                                           
}                                                                                                
story_original = "🍞🍻🐢😱🏥😷💊➡🥛☕💪🍅🚲🍻"                                                       
# something funny with 9th char                                                                  
char_broken = stringr::str_sub(story_original, start = 9, end = 9)                               
emojifont::search_emoji("bottle")                                                                
#> [1] "baby_bottle"
char_fixed = emojifont::emoji("baby_bottle")                                                     
story = stringr::str_replace(story_original, pattern = char_broken, replacement = char_fixed)    
story                                                                                            
#> [1] "🍞🍻🐢😱🏥😷💊➡🍼☕💪🍅🚲🍻"
stringr::str_sub(story, start = (nchar(story) - 3))                                              
#> [1] "💪🍅🚲🍻"
stringr::str_sub(story, start = (nchar(story) - 2))                                              
#> [1] "🍅🚲🍻"
story_vec = stringr::str_split(story, "", simplify = TRUE)                                       
story_vec[-(1:(length(story_vec) - 3))]                                                          
"bye!"       
