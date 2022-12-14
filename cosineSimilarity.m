function  retrieved = cosineSimilarity(Ak,qk, tol)
%cosineSimilarity Return a vector with the largest Cos(theta) at the
%first position

cosTheta = zeros(1, size(Ak, 2));
retrieved = [];
counter = 1;
    for i = 1:size(Ak, 2)
        cosTheta(i) = (qk'*Ak(:, i))/(norm(qk)*norm(Ak(:, i)));
        if(cosTheta(i) > tol) 
            retrieved(counter) = i;
            counter = counter +1;
        end
    end
    
%[relevantDocs, idxs] = cosTheta(cosTheta > 0.85);
    
%[vals, idxs] = sort(cosTheta, "descend");

end

