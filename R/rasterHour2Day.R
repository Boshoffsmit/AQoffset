#' Hour to day
#' 
#' Converts an hour raster to a day raster
#' 
#' @param s A raster
#' @param knip Logical. Create a new extent with NA-only columns cut out if TRUE
#' @export

rasterH2D <- function(s, knip = FALSE){
  
  if (knip == TRUE){
    s_ex <- knipNA(s[[1]], out = "extent")
    s <- crop(s, s_ex)
  } 
  patt <- "(day_)([[:digit:]]+)(_hour_)([[:digit:]]+$)"
  days <- as.numeric(gsub(patt, "\\2", names(s)))
  dateidx <- match(days, unique(days))
  r_24h <- stackApply(s, indices = dateidx, mean, na.rm = TRUE )
  r_24h
}
# assumes: names in the format
# slnames <- paste("day_",(as.numeric(gsub("X.001.11.30.", "", names(cppm10), 20)) %/%24)+1,"_hour_", as.numeric(gsub("X.001.11.30.", "", names(cppm10), 20)) %%24, sep="")