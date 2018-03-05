%% Set parameters

%%% All physical parameters

rho     = 1;
omega1   = 50;
omega2   = 40;

%%% All numerical parameters

resol = 20;
gridSize = resol*max(omega1, omega2);
deltaX = 1/gridSize;
xVec = (1:gridSize)'/gridSize;
level = ceil(log2(gridSize));

%%% Physical and numerical values

sigma1 = deltaX^2*rho*omega1^2;
sigma2= deltaX^2*rho*omega2^2;
muVec = mu_func(xVec)';

%% Calculating the displacement

u1 = invert_for_u(muVec, sigma1, [1, 1])
u2 = invert_for_u(muVec, sigma2, [1, 1])

%plot(xVec, u1, xVec, u2);

%u2 = invert_for_u(muVec, D2, 1, 1, gridSize);

%% Denoising Mu

%muIt = wlet_denoise(muNoise, level, 'db6', 0, 0, 8);

%plot(xVec, muVec, 'b', xVec, muNoise, 'r', xVec, muIt, 'g');
%return

muRec = invert_for_mu(u1,u2, sigma1, sigma2);

plot(xVec, muVec, xVec, muRec+0.1)