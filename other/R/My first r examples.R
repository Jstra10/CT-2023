5+6
x <- 3
print(x)

num_1 <- 3
num_2 <- 5
num_1 + num_2
num_1 - num_2
num_1 * num_2
num_2 / num_1

num_2 %/% num_1
num_2 %% num_1

my_first_name <- "James"
my_last_name <- "Stratton"

my_full_name <- paste(my_first_name, my_last_name, sep=' ')

print(my_full_name)

my_vec <- c(1,2,3,4,5,6,7,8,9)
print(my_vec)

my_vec2 <- c(9,8,7,6,5,4,3,2,1)
print(my_vec2)

my_vec2 * my_vec
my_added_vec <- my_vec + my_vec2
print(my_added_vec)
my_added_vec ^ 2

vec_1 <- c(1,2)
vec_2 <- c(1,2,3,8,5,12)
vec_1 * vec_2


seq(1, 10)
seq(1, 10, by=.2)

rep(5, times = 5)
rep(my_added_vec, times = 5, each = 5)

v <- c(1,2,NA,3)
print(v)
is.na(v)
!is.na((v))

v[3]
v[-1]
v[1:3]
v[-(1:3)]
v[-(1:3)]
v[!is.na(v)]


