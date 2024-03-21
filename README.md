# ggXG
A package generates palettes inspired by XG`s music videos!

Author was inspired by XG and developed based on ggsci! 

Connect author at: 不会飞的郎飞结 (bilibili) or 郎飞结的科研小铺 (微信公众号)

# Installation

Paste the code to the R console to install ggXG from GitHub.

```
install.packages("devtools")
library("devtools")
devtools::install_github("andrelau0622/ggXG")
```

# Functions
Use `scale_color_XXX`/`scale_colour_XXX` or `scale_fill_XXX` to create a palette of XG`s MVs.

```
#Harvey is a ggplot object
#Take palette SHOOTING_STAR_1 as an example
print(Harvey + scale_color_SHOOTING_STAR_1())
print(Harvey + scale_colour_SHOOTING_STAR_1())
print(Harvey + scale_fill_SHOOTING_STAR_1())
```
Palettes of ggXG has both discrete and continuous versions (discrete palette by default). 

Use `discrete = FALSE` to create a continuous palette.

```
#Hinata is a ggplot object
#Take palette LEFT_RIGHT_1 as an example
print(Hinata + scale_color_LEFT_RIGHT_1(discrete = FALSE))
print(Hinata + scale_colour_LEFT_RIGHT_1(discrete = FALSE))
print(Hinata + scale_fill_LEFT_RIGHT_1(discrete = FALSE))
```

You can not use`palette` in ggXG. 

Use `alpha` to set transparency and use `reverse` to reverse the palette.

```
#Jurin is a ggplot object
#Take palette LEFT_RIGHT_2 as an example
print(Jurin + scale_color_LEFT_RIGHT_2(alpha = 0.8))
print(Jurin + scale_colour_LEFT_RIGHT_2(alpha = 0.8, reverse = TRUE))
print(Jurin + scale_fill_LEFT_RIGHT_2(alpha = 0.8))
print(Jurin + scale_fill_LEFT_RIGHT_2(alpha = 0.8, reverse = TRUE))
```

Use `pal_XXX` and `rgb_XXX` to expore colours.

```
#Chisa is a ggplot object
#Take palette SHOOTING_STAR_2 as an example
pal_SHOOTING_STAR_2()(10) #create 10 colors
pal_SHOOTING_STAR_2(alpha = 0.5)(10)
pal_SHOOTING_STAR_2(alpha = 0.7, reverse = TRUE)(10)

rgb_SHOOTING_STAR_2(7) #create 7 colors
rgb_SHOOTING_STAR_2(n = 10, alpha = 0.5)
rgb_SHOOTING_STAR_2(n = 10, alpha = 0.7, reverse = TRUE)
```

Use `ggXG::keys()` to check all palettes.

```
ggXG::keys()
```
