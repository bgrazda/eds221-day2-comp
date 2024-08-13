dogs <- c("teddy", "khora", "waffle", "banjo")

typeof(dogs)
class(dogs)

weights <- c(50, 55, 25, 35)
typeof(weights) #multiple types within a numeric, returns double
class(weights) #generic type, returns numeric

dog_age <- c(5L, 6L, 1L, 7L)

typeof(dog_age)
class(dog_age)

is.numeric(dog_age)

dog_info <- c("teddy", 50, 5L)

typeof(dog_info)
is.character(dog_info)


dog_food <- c(teddy = "purina", 
              khora = "alpo",
              waffle = "fancy feast",
              banjo = "blue diamond")

dog_food[2]
dog_food["khora"]

cars <- c("red", "orange", "white", "blue", "silver", "black")
cars[5]
cars[2:4] # Tells R that we want the second through the fourth element 


i <- 2 
cars[i]

i <- seq(1:3)
cars[i]

cars[3] <- "BURRITOS!"
cars


fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), ncol = 2, nrow = 2, byrow = FALSE)
fish_size

typeof(fish_size)
class(fish_size)

dog_walk <- matrix(c("teddy", 5, "khora", 10), ncol = 2, nrow = 2, byrow = FALSE)
dog_walk

typeof(dog_walk)

whale_travel <- matrix(data = c(31.8, 1348, 46.9, 1587), nrow = 2, ncol = 2, byrow = TRUE)

# Take a look
whale_travel
# Access the value 1348
whale_travel[1,2] # Row 1, column 2
# Access the value 46.9
whale_travel[2,1]
whale_travel[2,] #access everything in row 2
whale_travel[,1] #access everything in column 1
whale_travel[3]

urchins <- list("blue", c(1, 2, 3), c("a cat", "a dog"), 5L)
urchins[[1]]

tacos <- list(topping = c("onion", "cilantro", "guacamole"), fillings = c("beans", "meat", "veggies"))
tacos[[2]]
tacos$fillings #these two ways output the same answer

tacos$fillings[1] #if you wanted the first filling in the list

fruit <- data.frame(type = c("apple", "banana", "peach"),
           mass = c(130, 195, 250))
fruit
class(fruit)

fruit[1,2]
fruit[2,1] <- "pineapple"
fruit$type
fruit$mass

