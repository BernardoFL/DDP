##### Full conditionals.

# locations
theta_j <- function(f_0, k_theta, old_s, old_u, old_w, new_s){
  Ns <- apply(old_w, 2, cumsum)
  
  
  
  cuantos <- which.max(s_ik)
  probas <- sapply(cuantos,)
}


#### Auxiliares

q_0k <- function(v) (phi*M*(1-v)^(M-1))/beta(1+n_jk, M+m_jk)

q_ik <- function(u, v, w) (1-phi)*(1-u)^(M-1)*v^n_jk*(1-w)^m_jk

# Calcula la N nueva, todo es paralelizado por rapidez
new_N <- function(ws, us){
  cl <- makeCluster(detectCores())
  registerDoParallel(cl)
  
  cuantos <- nrow(ws)
  ws <- apply(ws, 2, cumsum)
  ws <- as.vector(ws); us <- 1 - as.vector(us)
  res <- foreach(i = 1:length(ws), .combine = 'c') %dopar% {
    ws[i] > ui[i]    
  }
  res <- matrix(res, nrow=cuantos)
  stopCluster(cl)
  max(apply(res, 2, function(x) which.max(x)))
}
  