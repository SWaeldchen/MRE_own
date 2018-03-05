
N = 25;
k = 4;

x = (1:N)'/N;

mu = mu_func(x)';

full(waveOp_for_u(mu, 3))



% 
% x = (1:N)';
% u = sin(x);
% 
% op = uOp_for_mu(u);
% 
% full(op)
% 
% A1 = moving_avg_mat(N-2,k);
% A2 = moving_avg_mat(N-k-1,k);
% 
% full(A)
% 
% 
% diffMat = spdiags([-ones(N-1,1), ones(N-1,1)], [-1 0], N-1, N-1)
% full(diffMat)
% 
% int = inv(diffMat)
% 
% full(int)
% 
% 
% full(A1*op)
% 
% full(A2*A1*op)
% 
% full(A1*op*int)
% 
% inv(A1)