# list of models
#Building formulas
Model1 <- as.formula("BTUTOT.sqrt~age05+age05to09+age10to14+age15to19+age20to24+age25to29+
                     age30to34+age35to39+age40to44+age45to49+age50to54+age55to59+
                     age60to64+age65to69+age70to74+age75to79+age80p"
)
Model2 <- as.formula("BTUTOT.sqrt~age05+age05to09+age10to14+age15to19+age20to24+age25to29+
                     age30to34+age35to39+age40to44+age45to49+age50to54+age55to59+
                     age60to64+age65to69+age70to74+age75to79+age80p+
                     HDD65+CDD65"
)
Model3 <- as.formula("BTUTOT.sqrt~age05+age05to09+age10to14+age15to19+age20to24+age25to29+
                     age30to34+age35to39+age40to44+age45to49+age50to54+age55to59+
                     age60to64+age65to69+age70to74+age75to79+age80p+
                     HDD65+CDD65+
                     inc10"
)


Model4 <- as.formula("BTUTOT.sqrt~age05+age05to09+age10to14+age15to19+age20to24+age25to29+
                     age30to34+age35to39+age40to44+age45to49+age50to54+age55to59+
                     age60to64+age65to69+age70to74+age75to79+age80p+
                     HDD65+CDD65+
                     TYPEHUQ"
)

Model5 <- as.formula("BTUTOT.sqrt~age05+age05to09+age10to14+age15to19+age20to24+age25to29+
                     age30to34+age35to39+age40to44+age45to49+age50to54+age55to59+
                     age60to64+age65to69+age70to74+age75to79+age80p+
                     HDD65+CDD65+
                     YEARMADE10"
                     )

Model6 <- as.formula("BTUTOT.sqrt~age05+age05to09+age10to14+age15to19+age20to24+age25to29+
                     age30to34+age35to39+age40to44+age45to49+age50to54+age55to59+
                     age60to64+age65to69+age70to74+age75to79+age80p+
                     HDD65+CDD65+
                     HOMEAREA.sqrt"
)

Model7 <- as.formula("BTUTOT.sqrt~age05+age05to09+age10to14+age15to19+age20to24+age25to29+
                     age30to34+age35to39+age40to44+age45to49+age50to54+age55to59+
                     age60to64+age65to69+age70to74+age75to79+age80p+
                     HDD65+CDD65+
                     inc10+
                     HOMEAREA.sqrt"
)

Model8 <- as.formula("BTUTOT.sqrt~age05+age05to09+age10to14+age15to19+age20to24+age25to29+
                     age30to34+age35to39+age40to44+age45to49+age50to54+age55to59+
                     age60to64+age65to69+age70to74+age75to79+age80p+
                     HDD65+CDD65+
                     inc10+
                     TYPEHUQ+HOMEAREA.sqrt+YEARMADE10"
)

