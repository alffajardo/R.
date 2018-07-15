### clustering analysis course
# Plot the positions of the players

two_players <- matrix(data = c(5,4,15,10),nrow=2,ncol=2,byrow =T)
colnames(two_players) <- c("x","y")
rownames(two_players) <- c("player1","player2")
two_players <- as.data.frame(two_players)
ggplot(two_players, aes(x = x, y = y)) + 
  geom_point() +
  # Assuming a 40x60 field
  lims(x = c(-30,30), y = c(-20, 20))

# Split the players data frame into two observations 
player1 <- two_players[1, ]
player2 <- two_players[2, ]

# Calculate and print their distance using the Euclidean Distance formula
player_distance <- sqrt( (player1$x - player2$x)^2 + (player1$y - player2$y)^2 )
player_distance

### dist () function can be used to calculate distance between two point

three_players <- rbind.data.frame(c(5,2),c(15,10),c(0,20))
colnames(three_players) <- c("x", "y")

# Calculate the Distance Between two_players
dist_two_players <- dist(two_players)
dist_two_players

# Calculate the Distance Between three_players
dist_three_players <- dist(three_players)
dist_three_players


### four players

four_players <- rbind.data.frame(c(4,5),c(15,10),c(0,3),c(-5,5))
colnames(four_players) <- c("x","y")


#### the scale () function demeans t each value and divides it by the standar deviation. this process
#### alows standarization and comparison between diferent features.

# Calculate distance for three_trees 
dist_trees <- dist(trees)

# Scale three trees & calculate the distance  
scaled_three_trees <- scale(three)
dist_scaled_trees <- dist(scaled_three_trees)

# Output the results of both Matrices
print('Without Scaling')
dist_trees

print('With Scaling')
dist_scaled_trees
