function out = f(x)
N = 100;
out = sum(x.^(0:N)./factorial(0:N));
end