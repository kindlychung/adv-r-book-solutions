### Write an equivalent to get() using as.name() and eval().
### (Don’t worry about the multiple ways of choosing an environment; assume that
### the user supplies it explicitly.)
x = 3.13 
get1 <- function(x) {
  # eval(as.name(x), enclos = parent.frame())
  force(x)
  eval(as.name(x), parent.frame())
}
get1("x")
assign1 <- function(x, x_value) {
  x_name = as.name(x)
  eval(substitute(x <- v, list(x = x_name, v = x_value)), parent.frame())
}
assign1("y", 111)
y
