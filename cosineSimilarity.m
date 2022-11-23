function [vals, idxs] = cosineSimilarity(Hk,qk)
%cosineSimilarity Return a vector with the largest Cos(theta) at the
%first position

cosTheta = zeros(1, size(Hk, 2));

    for i = 1:size(Hk, 2)
        cosTheta(i) = (qk'*Hk(:, i))/(norm(qk)*norm(Hk(:, i)));
    end

[vals, idxs] = sort(cosTheta, "descend");
end

