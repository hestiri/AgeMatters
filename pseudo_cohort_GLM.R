
##GEN Ys (87 ps.cohorts) --the generation born in the 1980s and 1990s, 
# comprising primarily the children of the baby boomers and typically 
# perceived as increasingly familiar with digital and electronic technology.

A_Age5sIN87 <- subset(res, (
  (res$var == "age05" & res$year == 1987) | 
    (res$var == "age05to09" & res$year == 1990) |
    (res$var == "age20to24" & res$year == 2005) |
    (res$var == "age25to29" & res$year == 2009)
)
)

A_Age5sIN87$ps.cohort <- "ps.cohort 1"
A_Age5sIN87$ps.cohortXL <- "pseudo cohort 01: Age <5 in 1987"


B_Age9sIN87 <- subset(res, (
  (res$var == "age05to09" & res$year == 1987) | 
    (res$var == "age10to14" & res$year == 1990) |
    (res$var == "age25to29" & res$year == 2005) |
    (res$var == "age30to34" & res$year == 2009)
)
) 

B_Age9sIN87$ps.cohort <- "ps.cohort 2"
B_Age9sIN87$ps.cohortXL <- "pseudo cohort 02: Age 5-9 in 1987"


C_Age14sIN87 <- subset(res, (
  (res$var == "age10to14" & res$year == 1987) | 
    (res$var == "age15to19" & res$year == 1990) |
    (res$var == "age30to34" & res$year == 2005) |
    (res$var == "age35to39" & res$year == 2009)
)
) 

C_Age14sIN87$ps.cohort <- "ps.cohort 3"
C_Age14sIN87$ps.cohortXL <- "pseudo cohort 03: Age 10-14 in 1987"

D_Age19sIN87 <- subset(res, (
  (res$var == "age15to19" & res$year == 1987) | 
    (res$var == "age20to24" & res$year == 1990) |
    (res$var == "age35to39" & res$year == 2005) |
    (res$var == "age40to44" & res$year == 2009)
)
)

D_Age19sIN87$ps.cohort <- "ps.cohort 4"
D_Age19sIN87$ps.cohortXL <- "pseudo cohort 04: Age 15-19 in 1987"


E_Age24sIN87 <- subset(res, (
  (res$var == "age20to24" & res$year == 1987) | 
    (res$var == "age25to29" & res$year == 1990) |
    (res$var == "age40to44" & res$year == 2005) |
    (res$var == "age45to49" & res$year == 2009)
)
)

E_Age24sIN87$ps.cohort <- "ps.cohort 5"
E_Age24sIN87$ps.cohortXL <- "pseudo cohort 05: Age 20-24 in 1987"

F_Age29sIN87 <- subset(res, (
  (res$var == "age25to29" & res$year == 1987) | 
    (res$var == "age30to34" & res$year == 1990) |
    (res$var == "age45to49" & res$year == 2005) |
    (res$var == "age50to54" & res$year == 2009)
)
)

F_Age29sIN87$ps.cohort <- "ps.cohort 6"
F_Age29sIN87$ps.cohortXL <- "pseudo cohort 06: Age 25-29 in 1987"


G_Age34sIN87 <- subset(res, (
  (res$var == "age30to34" & res$year == 1987) | 
    (res$var == "age35to39" & res$year == 1990) |
    (res$var == "age50to54" & res$year == 2005) |
    (res$var == "age55to59" & res$year == 2009)
)
)

G_Age34sIN87$ps.cohort <- "ps.cohort 7"
G_Age34sIN87$ps.cohortXL <- "pseudo cohort 07: Age 30-34 in 1987"

H_Age39sIN87 <- subset(res, (
  (res$var == "age35to39" & res$year == 1987) | 
    (res$var == "age40to44" & res$year == 1990) |
    (res$var == "age55to59" & res$year == 2005) |
    (res$var == "age60to64" & res$year == 2009)
)
)

H_Age39sIN87$ps.cohort <- "ps.cohort 8"
H_Age39sIN87$ps.cohortXL <- "pseudo cohort 08: Age 35-39 in 1987"


I_Age44sIN87 <- subset(res, (
  (res$var == "age40to44" & res$year == 1987) | 
    (res$var == "age45to49" & res$year == 1990) |
    (res$var == "age60to64" & res$year == 2005) |
    (res$var == "age65to69" & res$year == 2009)
)
)

I_Age44sIN87$ps.cohort <- "ps.cohort 9"
I_Age44sIN87$ps.cohortXL <- "pseudo cohort 09: Age 40-44 in 1987"

J_Age49sIN87 <- subset(res, (
  (res$var == "age45to49" & res$year == 1987) | 
    (res$var == "age50to54" & res$year == 1990) |
    (res$var == "age65to69" & res$year == 2005) |
    (res$var == "age70to74" & res$year == 2009)
)
)

J_Age49sIN87$ps.cohort <- "ps.cohort 10"
J_Age49sIN87$ps.cohortXL <- "pseudo cohort 10: Age 45-49 in 1987"


K_Age54sIN87 <- subset(res, (
  (res$var == "age50to54" & res$year == 1987) | 
    (res$var == "age54to59" & res$year == 1990) |
    (res$var == "age70to74" & res$year == 2005) |
    (res$var == "age75to79" & res$year == 2009)
)
)

K_Age54sIN87$ps.cohort <- "ps.cohort 11"
K_Age54sIN87$ps.cohortXL <- "pseudo cohort 11: Age 50-54 in 1987"

L_Age59sIN87 <- subset(res, (
  (res$var == "age55to59" & res$year == 1987) | 
    (res$var == "age60to64" & res$year == 1990) |
    (res$var == "age75to79" & res$year == 2005) |
    (res$var == "age80p" & res$year == 2009)
)
)

L_Age59sIN87$ps.cohort <- "ps.cohort 12"
L_Age59sIN87$ps.cohortXL <- "pseudo cohort 12: Age 55-59 in 1987"

# A_Age5sIN87 <- A_Age5sIN87[sample(nrow(A_Age5sIN87), 34166), ]
# B_Age9sIN87 <- B_Age9sIN87[sample(nrow(B_Age9sIN87), 34166), ]
# C_Age14sIN87 <- C_Age14sIN87[sample(nrow(C_Age14sIN87), 34166), ]
# D_Age19sIN87 <- D_Age19sIN87[sample(nrow(D_Age19sIN87), 34166), ]
# E_Age24sIN87 <- E_Age24sIN87[sample(nrow(E_Age24sIN87), 34166), ]
# F_Age29sIN87 <- F_Age29sIN87[sample(nrow(F_Age29sIN87), 34166), ]
# G_Age34sIN87 <- G_Age34sIN87[sample(nrow(G_Age34sIN87), 34166), ]
# H_Age39sIN87 <- H_Age39sIN87[sample(nrow(H_Age39sIN87), 34166), ]
# I_Age44sIN87 <- I_Age44sIN87[sample(nrow(I_Age44sIN87), 34166), ]
# J_Age49sIN87 <- J_Age49sIN87[sample(nrow(J_Age49sIN87), 34166), ]
# K_Age54sIN87 <- K_Age54sIN87[sample(nrow(K_Age54sIN87), 34166), ]
# L_Age59sIN87 <- L_Age59sIN87[sample(nrow(L_Age59sIN87), 34166), ]


GEN_Y <- rbind(A_Age5sIN87,B_Age9sIN87,C_Age14sIN87,D_Age19sIN87,E_Age24sIN87,F_Age29sIN87,
               G_Age34sIN87,H_Age39sIN87,I_Age44sIN87,J_Age49sIN87,K_Age54sIN87,L_Age59sIN87)

rm(A_Age5sIN87,B_Age9sIN87,C_Age14sIN87,D_Age19sIN87,E_Age24sIN87,F_Age29sIN87,
   G_Age34sIN87,H_Age39sIN87,I_Age44sIN87,J_Age49sIN87,K_Age54sIN87,L_Age59sIN87)



# 
# 
# ### visualizations for GEN Ys
# GEN_Y$Coef <- as.integer(GEN_Y$Coef)
# 
# GEN_Y$REGX <- 0
# r <- length(unique(GEN_Y$Var))
# for (i in 1:r) {
#   var <- unique(GEN_Y$Var)[i]
#   num <- rank(unique(GEN_Y$Var))[i]
#   GEN_Y$REGX <- ifelse(GEN_Y$Var == var, num, GEN_Y$REGX)
# }
# 
# 
# 
# plotG1 <-
#   ggplot(subset(GEN_Y,GEN_Y$MODEL == "Model C"), 
#          aes(x = Var, y = Coef)) +
#   theme_bw() + 
#   geom_point()+ #geom_line()+
#   # geom_point(aes(color=as.factor(ps.cohort))) +
#   facet_wrap(~ varnams, ncol = 1) +
#   # geom_linerange(alpha=0.3) +
#   geom_smooth(aes(x= REGX, y=Coef,color = ps.cohortXL, group = ps.cohortXL),se = F,span = 0.8) +
#   # geom_smooth(aes(x= REGX, y=Coef),se = T,span = 0.5) +
#   # geom_smooth(data=subset(Ages.bundle, Ages.bundle$MODEL == "Model C"),aes(x= REGX, y=Coef),size=2,se = F,span = 0.5) +
#   guides(col = guide_legend(nrow = 4,"pseudo-ps.cohort",title.position = "top")) +
#   # guides(col = guide_legend(nrow = 1,"ps.cohort",title.position = "top")) +
#   theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
#   theme(strip.text.x = element_text(size=14, face="bold"),
#         strip.text.y = element_text(size=14, face="bold")) +
#   theme(legend.position = "bottom") +
#   theme(legend.text=element_text(size=10)) +
#   labs(title ="", x = "Age Group", y = "Estimated Coefficient")  
# ggsave("outputs/figure3-1.pdf", plotG1, dpi = 300, width = 8, height = 6)
# 
# 
# plotG2 <-
#   ggplot(subset(GEN_Y,GEN_Y$MODEL == "Model C"), 
#          aes(x = Var, y = Coef)) +
#   theme_bw() + 
#   # geom_point()+ #geom_line()+
#   # geom_point(aes(color=as.factor(ps.cohort))) +
#   facet_wrap(~ varnams, ncol = 1) +
#   # geom_linerange(alpha=0.3) +
#   geom_point(aes(x= Var, y=Coef), color = "gray",alpha=0.7) +
#   geom_smooth(data=subset(Ages.bundle, Ages.bundle$MODEL == "Model C"),aes(x= REGX, y=Coef),
#               size=1,se = F,span = 0.5, color ="gray") +
#   geom_smooth(aes(x= REGX, y=Coef),size= 2, se = F,span = 0.5, color = "red") +
#   
#   guides(col = guide_legend(nrow = 1,"ps.cohort",title.position = "top")) +
#   # guides(col = guide_legend(nrow = 1,"ps.cohort",title.position = "top")) +
#   theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
#   theme(strip.text.x = element_text(size=14, face="bold"),
#         strip.text.y = element_text(size=14, face="bold")) +
#   theme(legend.position = "bottom") +
#   theme(legend.text=element_text(size=10)) +
#   labs(title ="", x = "Age Group", y = "Estimated Coefficient")
# 
# ggsave("outputs/figure3-2.pdf", plotG2, dpi = 300, width = 8, height = 4.5)
# 
# 
# ##extra plots not used in the paper
# # plotG <-
# #   ggplot(GEN_Y, aes(x = Var, y = Coef, color = ps.cohortXL, group = ps.cohortXL)) +
# #   theme_bw() + 
# #   geom_point()+ #geom_line()+
# #   # geom_point(aes(color=as.factor(ps.cohort))) +
# #   facet_wrap(~ varnams, ncol = 1) +
# #   # geom_linerange(alpha=0.3) +
# #   geom_smooth(aes(x= REGX, y=Coef),se = F,span = 0.8) +
# #   guides(col = guide_legend(nrow = 4,"ps.cohort",title.position = "top")) +
# #   # guides(col = guide_legend(nrow = 1,"ps.cohort",title.position = "top")) +
# #   theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
# #   theme(strip.text.x = element_text(size=14, face="bold"),
# #         strip.text.y = element_text(size=14, face="bold")) +
# #   theme(legend.position = "bottom") +
# #   theme(legend.text=element_text(size=10)) +
# #   labs(title ="", x = "Age Group", y = "Estimated Coefficient")  
# # 
# # ggsave("outputs/plot4-new.pdf", plotG, dpi = 300, width = 9, height = 15)
# 
# # 
# # ggplot(GEN_Y, aes(x = Var, y = Coef)) + #+ theme_bw() + geom_linerange(alpha=0.3) +
# #   geom_smooth(aes(x= REGX, y=Coef, color=as.factor(MDL)),se = T,span = 0.8) +
# #   geom_point(aes(x= REGX, y=Coef),alpha=0.4,shape=19) +
# #   geom_smooth(aes(x= REGX, y=Coef, color=as.factor(MDL)),se = F,span = 0.8) +
# #   theme(axis.text.x = element_text(angle = 90, hjust = 1)) +
# #   theme(legend.position = "bottom") +
# #   theme(strip.text.x = element_text(size=9, face="bold"),
# #         strip.text.y = element_text(size=9, face="bold")) +
# #   guides(col = guide_legend(nrow = 4,"Model",title.position = "top")) +
# #   facet_wrap(~MDL, ncol=4)  + labs(title ="Coefficient estimate ranges by year", x = "Age Group", y = "Estimated Coefficient")  
# # 