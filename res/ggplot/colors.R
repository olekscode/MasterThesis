gg_color_hue <- function(n) {
  hues = seq(15, 375, length = n + 1)
  hcl(h = hues, l = 65, c = 100)[1:n]
}

blue <- '#386cb0'
yellow <- '#fdb462'
green <- '#7fc97f'
red <- '#ef3b2c'
brown <- '#662506'
lightBlue <- '#a6cee3'
pink <- '#fb9a99'
purple <- '#984ea3'

#red <- gg_color_hue(3)[1]
#green <- gg_color_hue(3)[2]
#blue <- gg_color_hue(3)[3]
#purple <- gg_color_hue(4)[4]
#yellow <- "#ffff33"
