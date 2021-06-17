# Two-Sample T-Test

library(car)

# Data
FILE_PATH = 'data/gender_score.csv'
HEADER = T
SEP = ','

df <- read.csv(FILE_PATH, header=HEADER, sep=SEP)

df

df_stack <- stack(df)

# Levene Test
df_leveneTest <- leveneTest(values~ind, data=df_stack)

df_leveneTest

if (df_leveneTest$`Pr(>F)`[1] > 0.05) {
  t.test(values~ind, data=df_stack, var.equal=T)
} else {
  t.test(values~ind, data=df_stack, var.equal=F)
}
