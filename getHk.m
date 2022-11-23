function Hk = getHk(S, Vt, k)
%getHk Return Hk = Sigma_k * V_T_k
Sk = S(1:k, 1:k);
Vtk = Vt(1:k, :);

Hk = Sk*Vtk;
end

