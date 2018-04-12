function [X]=preprocessed(textdata)
cleandata=erasePunctuation(textdata);
cleandata=lower(cleandata);
cleandocs=tokenizedDocument(cleandata);
removwords=removeWords(cleandocs,stopWords);
removwords=removeShortWords(removwords,2);
removwords=removeLongWords(removwords,15);
normal=normalizeWords(removwords);
X=normal;
end
