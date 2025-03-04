function t = t_test(set1, set2)

d = set1 - set2
ad = mean(d)
sd = std(d)
se = sd / sqrt(10)

t = abs(ad / se)
