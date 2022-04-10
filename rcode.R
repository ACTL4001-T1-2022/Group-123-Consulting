model <- glm(Rank ~ StandardSoTP, data=data_atk, family=binomial)
probabilities <- model %>% predict(fit_atk, type = "response")
which(probabilities == max(probabilities))

model2 <- glm(Rank ~ ShortCmpP, data=data_mf, family=binomial)
probabilities2 <- model2 %>% predict(fit_mf, type = "response")
which(probabilities2 == max(probabilities2))

model3 <- glm(Rank ~ Pressures.Def.3rd, data=data_df, family=binomial)
probabilities3 <- model3 %>% predict(fit_df, type = "response")
which(probabilities3 == max(probabilities3))

model4 <- glm(Rank ~ Performance.GA90, data=data_gk, family=binomial)
probabilities4 <- model4 %>% predict(fit_gk, type = "response")
which(probabilities4 == max(probabilities4))
