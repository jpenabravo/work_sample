acs_language %>% 
  ggplot(aes(x = zipcode, y = percent, fill = language)) +
  geom_col() +
  # geom_text(aes(label = percent), position = position_stack(vjust = 0.5), color = "red") +
  coord_flip() +
  facet_wrap(~year) +
  theme_minimal() +
  scale_fill_manual(values=c("#3D405B", "#F4F1DE", "#E07A5F", "#81B29A", "#F2CC8F")) 
# +
#   theme(legend.position = "none")




# acs_language %>% 
#   ggplot(aes(x = zipcode, y = percent, fill = language)) +
#   geom_col() +
#   # geom_text(aes(label = percent), position = position_stack(vjust = 0.5), color = "red") +
#   coord_flip() +
#   facet_wrap(~year) +
#   theme_minimal() +
#   scale_fill_manual(values=c("#3D405B", "#81B29A", "#F2CC8F"))
# 
bot_5_eng %>%
  ggplot(aes(x = reorder(zipcode, percent), y = percent, fill = language)) +
  geom_col() +
  geom_text(aes(label = percent), nudge_y = -15) +
  coord_flip() +
  facet_wrap(~year) +
  theme_minimal() +
  scale_fill_manual(values=c("#F4F1DE")) +
  theme(legend.position = "none")
# 
# top_5_spa %>% 
#   ggplot(aes(x = reorder(zipcode, percent), y = percent, fill = language)) +
#   geom_col() +
#   geom_text(aes(label = percent), color = "white", nudge_y = -5) +
#   coord_flip() +
#   facet_wrap(~year, scales = "free_y") +
#   theme_minimal() +
#   scale_fill_manual(values=c("#F2CC8F")) +
#   theme(legend.position = "none")
