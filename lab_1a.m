arr = table2array(readtable("ImageJ_ClassDataset.xlsx"))
T = zeros(10, 13)

for n = 1:10
    T(n, 1:12) = makeset(arr)
end

x = 1:10
bar(x, T(:, 11))

hold on

title("Average Small Cell Width of 10 Random Datasets with Error Bars")
xlabel("Dataset")
ylabel("Average (in)")
er = errorbar(x, T(:, 11), T(:, 12))
er.Color = [0 0 0]
er.LineStyle = "none"

hold off

exportgraphics(gcf, "Bar_Graph_1A.png")

for n = 2:10
    T(n, 13) = t_test(T(1, 1:10), T(n, 1:10))
end

T = array2table(T, "VariableNames", ["Student 1", "Student 2", "Student 3", "Student 4", "Student 5", "Student 6", "Student 7", "Student 8", "Student 9", "Student 10", "Avg", "Stdev", "|t|"])
writetable(T, "Lab_Report_1A_Data.xlsx")