function queryWords = getQueryWords(queryVector, dict)
%getQueryWords Return s the words in the query
[rowIdx, ~, ~] = find(queryVector);
queryWords = dict(rowIdx, : );

end

