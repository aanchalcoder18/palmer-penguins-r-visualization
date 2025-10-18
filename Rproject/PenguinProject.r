#install and looking
install.packages("tidyverse")
library("tidyverse")
library("ggplot2")
library("palmerpenguins")
View(penguins)


ggplot(data = penguins) + 
  geom_smooth(mapping = aes(x=flipper_length_mm, y= body_mass_g)) +
  geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g))


ggplot(data = penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g, color=species)) +
  facet_wrap(~species)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g, color=species)) +
  facet_grid(sex~species)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x=flipper_length_mm, y= body_mass_g, color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle= "Sample of Three Penguin Species",
       caption= "Data collected by Dr. Kristen Gorman")+
  annotate("text", x=220,y=3500, label="The Gentoos are the largest", color="purple",
           fontface="bold", size=3, angle=25)