# Cameron Carter and Matthew McArthur

# read wine.csv file
Wine.df <- read.csv("Wine.csv")

# run Principal Componets Analysis on all the attributes
# DO NOT NORMALIZE the attributes
pcs <- prcomp(na.omit(Wine.df[,-c(1)]))

# Display the summary of the commponents 
summary(pcs)

#display the contribution of each attribute using the $rot 
# display only the first 5 components
pcs$rot[,1:5]

# with the results above, answer the following questions
# 1. How many components would you choose to reach at least 80% contribution?
# 2. Why is PC1 much greater than that of any other component?

# 1. It will only take one component to reach 80% contribution. The value is 99.81%.
# 2. This component is much bigger because the data has not been normalized yet.

# run Principal Components Analysis on all the attributes
# make sure to NORMALIZE the attributes
pcs.cor <- prcomp(na.omit(Wine.df[,-c(1)]), scale. = T)

# Display the summary of the components 
summary(pcs.cor)

#display the contribution of each attribute using the $rot 
# display only the first 5 components
pcs.cor$rot[,1:5]

# with the results above, answer the following questions
# 1. How many components would you choose to reach at least 80% contribution?
# 2. What attributes contribute the most to PC1?
# 3. Why it is important to normalize data?

# 1. I would choose 5 components to reach 80 percent contribution.
# 2. The biggest positive contributor is Nonflavenoid Phenols. The biggest negative 
# contributors are Flavenoids, Total Phenols, Proanthocyanins, Hue, Proline, and OD280. 
# 3. Normalizing the data puts all the data on an equal scale so the components can
# actually be trusted.
