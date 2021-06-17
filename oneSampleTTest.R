# One-Sample T-Test

# Data
FILE_PATH = 'data/gender_score.csv'
HEADER = T
SEP = ','

# Theoretical Mean
THEORETICAL_MEAN = 80

df <- read.csv(FILE_PATH, header=HEADER, sep=SEP)

df

df_ttest <- t.test(df$Male, mu=THEORETICAL_MEAN)

df_ttest
