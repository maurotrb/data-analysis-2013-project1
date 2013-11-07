helper.function <- function()
{
  return(1)
}

## "Mixed Case" Capitalizing - toupper( every first letter of a word )
## from toupper() help
helper.capwords <- function(s, wsep = " ", strict = FALSE) {
  cap <- function(s) paste(toupper(substring(s, 1, 1)),
                           {s <- substring(s, 2); if(strict) tolower(s) else s},
                           sep = "", collapse = wsep )
  sapply(strsplit(s, split = wsep), cap, USE.NAMES = !is.null(names(s)))
}