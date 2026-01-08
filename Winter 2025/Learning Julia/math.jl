#Leveque - Finite Difference Methods
#Example 1.1
using Plots

# Functions from before
u(y) = sin(y)

d_plus(f, y, h) = (f(y + h) - f(y)) / h
d_minus(f, y, h) = (f(y) - f(y - h)) / h
d_zero(f, y, h) = (f(y + h) - f(y - h)) / (2h)

# List of h values (a Vector)
hs = [1.0e-1, 5.0e-2, 1.0e-2, 5.0e-3, 1.0e-3]

y = 1.0

# Make a matrix: rows = different h, columns = [h, d_plus, d_minus, d_zero]
table = zeros(length(hs), 4)

for (i, h) in enumerate(hs)
    table[i, 1] = h
    table[i, 2] = d_plus(u, y, h)
    table[i, 3] = d_minus(u, y, h)
    table[i, 4] = d_zero(u, y, h)
end

table
# Now `table` is your table of values
# column 1: h
# column 2: d_plus
# column 3: d_minus
# column 4: d_zero






