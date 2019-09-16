library(lpSolveAPI)
a <- make.lp(0,3,verbose = "neutral")
a
add.constraint(a, c(1,1,1), "<=", 750 )
add.constraint(a, c(1,1,1), "<=", 900)
add.constraint(a, c(1,1,1), "<=", 450)
add.constraint(a, c(20,15,12), "<=", 13000)
add.constraint(a, c(20,15,12), "<=", 12000)
add.constraint(a, c(20,15,12), "<=", 5000)
add.constraint(a, c(1,1,1), "<=", 900)
add.constraint(a, c(1,1,1), "<=", 1200)
add.constraint(a, c(1,1,1), "<=", 750)


a.col <- c("P 1","P 2","P 3") # Assigning 3 columns
a.row <- c("X1L","X2L","X3L","X1M",
           "X2M","X3M","X1S","X2S","X3S") # Assigning 9 Rows
dimnames(a) <- list(a.row,a.col)

a

solve(a)
get.objective(a)
get.variables(a)
get.constraints(a)