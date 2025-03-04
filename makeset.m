function set = makeset(arr)

set = zeros(1, 12)
students = randperm(57, 10)

for n = 1:10
    set(1, n) = arr(students(1, n), 3)
end

set(1, 11) = mean(set(1, 1:10))
set(1, 12) = std(set(1, 1:10))