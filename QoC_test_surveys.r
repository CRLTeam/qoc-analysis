# remove # if you need to install packages
#install.packages("psych")
#install.packages("polycor")
#install.packages("ggplot2")
#install.packages("ggfortify")

# load the libraries
library(psych)
library(polycor)
library(ggplot2)
library(ggfortify)

# load the hypothetical data
startup1_survey  <- c(6,5,2,2,1,1,1,1,2,4,3,2,2,2,2,1,7,7,3,1,1,1,5,5,5,4,1,3)
startup2_survey  <- c(5,6,4,3,1,1,1,1,1,3,3,2,2,2,2,3,7,7,3,1,1,1,5,6,6,6,1,3)
startup3_survey  <- c(6,6,3,4,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,3,3,4,1,1)
medium1_survey   <- c(2,2,2,2,2,3,3,4,4,4,3,6,4,3,2,3,7,6,5,2,3,3,5,6,5,6,6,3)
medium2_survey   <- c(2,2,2,2,2,3,3,3,3,6,5,6,6,6,3,5,6,6,7,6,6,6,6,6,6,6,5,6)
medium3_survey   <- c(4,4,2,2,5,4,4,3,5,5,4,1,1,1,1,5,6,5,5,1,1,1,6,6,5,5,4,5)
large1_survey    <- c(5,4,3,5,3,4,5,5,6,7,7,7,7,6,6,6,5,5,7,5,6,6,6,6,6,6,6,5)
large2_survey    <- c(5,4,2,4,3,4,4,5,6,7,6,6,6,6,3,5,6,7,7,5,6,6,5,6,6,6,6,7)
bank1_survey     <- c(2,3,2,2,2,4,5,5,7,7,6,7,7,7,5,6,6,7,7,6,6,7,6,7,7,6,6,7)
bank2_survey     <- c(2,2,2,2,3,3,3,3,7,6,6,7,7,6,4,7,6,7,7,7,7,7,7,7,7,6,7,7)
bank3_survey     <- c(2,3,3,2,4,2,2,4,7,7,7,7,7,5,3,6,5,6,7,6,6,5,6,6,7,6,6,7)
hospital1_survey <- c(4,3,4,2,2,3,3,4,5,5,4,7,6,3,2,5,3,4,6,4,5,4,6,4,5,6,5,7)
hospital2_survey <- c(5,4,5,3,3,4,4,4,4,5,4,7,5,2,2,5,3,5,6,5,5,4,7,5,5,5,6,7)
hospital3_survey <- c(5,6,5,2,3,5,5,5,4,4,3,6,5,3,2,4,2,3,6,4,5,4,6,4,5,6,5,7)
finance1_survey  <- c(4,3,3,2,3,4,5,6,6,6,4,6,6,6,4,6,4,5,7,4,7,5,6,6,6,6,4,7)
finance2_survey  <- c(2,2,2,2,2,4,4,5,7,6,5,7,7,7,7,7,4,7,7,5,7,7,5,6,7,6,6,7)
finance3_survey  <- c(3,3,3,2,3,4,5,6,6,6,4,6,6,6,3,6,4,5,6,4,5,6,5,6,6,6,5,7)
academic1_survey <- c(5,4,6,6,4,5,6,7,5,5,4,4,4,5,5,4,3,5,5,3,6,4,4,5,5,5,6,6)
academic2_survey <- c(4,4,4,5,4,5,7,7,5,5,5,4,4,4,3,4,3,5,6,5,6,5,5,5,6,6,6,5)
academic3_survey <- c(6,2,3,6,3,5,5,5,4,4,3,3,4,2,2,3,2,5,5,1,1,1,3,3,3,4,4,1)

# Create a data frame
survey <- data.frame(
    S1 = startup1_survey,
    S2 = startup2_survey,
    S3 = startup3_survey,
    M1 = medium1_survey,
    M2 = medium2_survey,
    M3 = medium3_survey,
    L1 = large1_survey,
    L2 = large2_survey,
    B1 = bank1_survey,
    B2 = bank2_survey,
    B3 = bank3_survey,
    H1 = hospital1_survey,
    H2 = hospital2_survey,
    H3 = hospital3_survey,
    F1 = finance1_survey,
    F2 = finance2_survey,
    F3 = finance3_survey,
    A1 = academic1_survey,
    A2 = academic2_survey,
    A3 = academic3_survey
)

# Calculate the polychoric correlation
pcm <- polychoric(survey, smooth=TRUE, correct=0)$rho

# Use the polychoric data as normalized data
pca_results <- prcomp(pcm, center = FALSE, scale. = FALSE)

# plot a biplot with grouping
autoplot(
    pca_results,
    data = pcm, 
    loadings = FALSE, 
    loadings.colour = 'gray',
    loadings.label = TRUE,
    loadings.label.size = 5,
    frame = FALSE, 
    frame.type = 'norm' 
)

# Screeplot of eigenvalues
screeplot(pca_results, type = "lines", main = "Scree Plot (Base R)")



