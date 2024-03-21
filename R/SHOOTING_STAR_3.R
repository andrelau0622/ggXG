#' pal_SHOOTING_STAR_3
#'
#' Mimicking the pal_XXX function in the ggsci package, it returns a vector of hexadecimal colors.
#'
#' @param alpha the alpha value of each color
#' @param reverse invert the color sequence
#'
#' @importFrom grDevices col2rgb rgb
#'
#' @return a vector of hexadecimal colors
#' @export
#'
#' @examples
#' pal_SHOOTING_STAR_3()(10)
#' pal_SHOOTING_STAR_3(alpha = 0.5)(10)
#' pal_SHOOTING_STAR_3(alpha = 0.5, reverse = TRUE)(20)
pal_SHOOTING_STAR_3 = function(alpha = 1, reverse = FALSE) {
  pal <- c("#D41F07", "#FB9A04", "#A1AA02", "#0BA8C1", "#C8A8C4")
  pal_rgb = col2rgb(pal)
  return(function(x){
    vec = 1:x
    if(reverse){
      vec = rev(vec)
    }
    return(sapply(vec, function(y){
      len = length(pal)
      pos = y / x * len
      pos = ifelse(pos < 1, 1, ifelse(pos > len, len, pos))
      rgb = pal_rgb[, floor(pos)] + (pal_rgb[, ceiling(pos)] - pal_rgb[, floor(pos)]) * (pos - floor(pos))
      rgb = rgb / 255
      return(rgb(rgb[1], rgb[2], rgb[3], alpha))
    }))
  })
}

#' rgb_SHOOTING_STAR_3
#'
#' Mimicking the rgb_XXX function in the ggsci package, it returns a vector of hexadecimal colors.
#'
#' @param n the number of colors generated
#' @param alpha the alpha value of each color
#' @param reverse invert the color sequence
#'
#' @return a vector of hexadecimal colors
#' @export
#'
#' @examples
#' rgb_SHOOTING_STAR_3()
#' rgb_SHOOTING_STAR_3(10)
#' rgb_SHOOTING_STAR_3(n = 10, alpha = 0.5)
#' rgb_SHOOTING_STAR_3(n = 20, alpha = 0.7, reverse = TRUE)
rgb_SHOOTING_STAR_3 = function(n = 12, alpha = 1, reverse = FALSE){
  return(pal_SHOOTING_STAR_3(alpha = alpha, reverse = reverse)(n))
}

#' scale_color_SHOOTING_STAR_3
#'
#' Mimicking the scale_color_XXX function, it returns a ggplot color scale
#'
#' @param discrete if true, returns a discrete palette; if false, returns a continuous color palette.
#' @param alpha the alpha value of each color
#' @param reverse invert the color sequence
#' @param ... passed to the discrete_scale or scale_color_gradientn
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
#'
#' @return a ggplot color scale
#' @export
#'
#' @examples
#' scale_color_SHOOTING_STAR_3()
#' scale_color_SHOOTING_STAR_3(FALSE)
#' scale_color_SHOOTING_STAR_3(alpha = 0.5)
#' scale_color_SHOOTING_STAR_3(FALSE, alpha = 0.7, reverse = TRUE)
scale_color_SHOOTING_STAR_3 = function(discrete = TRUE, alpha = 1, reverse = FALSE, ...) {
  if(discrete){
    return(discrete_scale("colour", "SHOOTING_STAR_3", pal_SHOOTING_STAR_2(alpha = alpha, reverse = reverse), ...))
  }
  else{
    return(scale_color_gradientn(colours = rgb_SHOOTING_STAR_3(n = 512, alpha = alpha, reverse = reverse), ...))
  }
}

#' scale_colour_SHOOTING_STAR_3
#'
#' Mimicking the scale_colour_XXX function, it returns a ggplot colour scale
#'
#' @param discrete if true, returns a discrete palette; if false, returns a continuous colour palette.
#' @param alpha the alpha value of each colour
#' @param reverse invert the colour sequence
#' @param ... passed to the discrete_scale or scale_color_gradientn
#'
#' @return a ggplot colour scale
#' @export
#'
#' @examples
#' scale_colour_SHOOTING_STAR_3()
#' scale_colour_SHOOTING_STAR_3(FALSE)
#' scale_colour_SHOOTING_STAR_3(alpha = 0.5)
#' scale_colour_SHOOTING_STAR_3(FALSE, alpha = 0.7, reverse = TRUE)
scale_colour_SHOOTING_STAR_3 = scale_color_SHOOTING_STAR_3

#' scale_fill_SHOOTING_STAR_3
#'
#' Mimicking the scale_fill_XXX function, it returns a ggplot color scale
#'
#' @param discrete if true, returns a discrete palette; if false, returns a continuous color palette.
#' @param alpha the alpha value of each color
#' @param reverse invert the color sequence
#' @param ... passed to the discrete_scale or scale_fill_gradientn
#'
#' @importFrom ggplot2 discrete_scale scale_fill_gradientn
#'
#' @return a ggplot color scale
#' @export
#'
#' @examples
#' scale_fill_SHOOTING_STAR_3()
#' scale_fill_SHOOTING_STAR_3(FALSE)
#' scale_fill_SHOOTING_STAR_3(alpha = 0.5)
#' scale_fill_SHOOTING_STAR_3(FALSE, alpha = 0.7, reverse = TRUE)
scale_fill_SHOOTING_STAR_3 = function(discrete = TRUE, alpha = 1, reverse = FALSE, ...) {
  if(discrete){
    return(discrete_scale("fill", "SHOOTING_STAR_3", pal_SHOOTING_STAR_3(alpha = alpha, reverse = reverse), ...))
  }
  else{
    return(scale_fill_gradientn(colours = rgb_SHOOTING_STAR_3(n = 512, alpha = alpha, reverse = reverse), ...))
  }
}
