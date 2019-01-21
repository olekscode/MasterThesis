library(ggplot2)
library(ggthemes)
library(grid)
library(gridExtra)
library(scales)

source('colors.R')

hist <- read.csv('/Volumes/MyPassport/Data/NameGen/Results/histories.csv', sep='\t')
hist$iter <- c(1:nrow(hist)) * 1000

theme_Publication <- function(base_size=14, base_family="helvetica") {
  (theme_foundation(base_size=base_size)
    + theme(plot.title = element_text(face = "bold",
                                      size = rel(1.2), hjust = 0.5),
            text = element_text(),
            panel.background = element_rect(colour = NA),
            plot.background = element_rect(colour = NA),
            panel.border = element_rect(colour = NA),
            axis.title = element_text(face = "bold",size = rel(1)),
            axis.title.y = element_text(angle=90,vjust =2),
            axis.title.x = element_text(vjust = -0.2),
            axis.text = element_text(), 
            axis.line = element_line(colour="black"),
            axis.ticks = element_line(),
            panel.grid.major = element_line(colour="#f0f0f0"),
            panel.grid.minor = element_blank(),
            legend.key = element_rect(colour = NA),
            legend.title = element_text(face="italic"),
            plot.margin=unit(c(10,5,5,5),"mm"),
            strip.background=element_rect(colour="#f0f0f0",fill="#f0f0f0"),
            strip.text = element_text(face="bold")
    ))
}

ggplot(hist, aes(iter))+
  geom_line(aes(y = F1, color = 'F1', linetype = 'Our model'))+
  geom_line(aes(y = 0.317, color = 'F1', linetype = 'TF-IDF'))+
  geom_line(aes(y = Precision, color = 'Precision', linetype = 'Our model'))+
  geom_line(aes(y = 0.298, color = 'Precision', linetype = 'TF-IDF'))+
  geom_line(aes(y = Recall, color = 'Recall', linetype = 'Our model'))+
  geom_line(aes(y = 0.387, color = 'Recall', linetype = 'TF-IDF'))+
  geom_line(aes(y = ExactMatch, color = 'Exact match', linetype = 'Our model'))+
  geom_line(aes(y = 0.004, color = 'Exact match', linetype = 'TF-IDF'))+
  scale_color_manual(values = c(yellow, green, blue, red))+
  scale_linetype_manual(values = c('solid', 'dashed'))+
  scale_y_continuous(
    labels=percent,
    breaks=seq(0,0.55,0.1))+
  labs(
    color = 'Metrics',
    linetype = 'Models',
    x = 'Iteration',
    y = 'Score')+
  theme(
    text = element_text(size = 15),
    axis.title.y = element_text(margin = margin(t = 0, r = 15, b = 0, l = 0)),
    axis.title.x = element_text(margin = margin(t = 15, r = 0, b = 0, l = 0)),
    legend.margin = margin(t = 10, r = 0, b = 10, l = 20))+
  theme_Publication()
