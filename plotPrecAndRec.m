function plotPrecAndRec(lsi_precision,lsi_recall,c_precision,c_recall)
plot(lsi_recall*100,lsi_precision*100, 'b-o')
ylim([0 100])
ytickformat('percentage')
xtickformat('percentage')
ylabel('Precision (%)')
xlabel('Recall (%)')
hold on
plot(c_recall*100, c_precision*100, 'r-x')
hold off
end