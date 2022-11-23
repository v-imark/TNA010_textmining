function Hk = getHk(S, V, k)
%getHk Return Hk = Sigma_k * V_T_k
Sk = S(1:k, 1:k);
Vtk = V(:, 1:k)';
Hk = Sk*Vtk;

% H = S*Vt;
% Hk = H(1:k, :);


end

