format long

f1 = inline('sin(x)', 'x'); % the integrand
approx1 = Trapezoid_Uniform(f1, 0, pi, 60) % numerical integration using trapezoid rule

syms x;
f2 = sin(x);      
a = int(f2, x, 0, pi) % the actual value of the integral of sin(x) over [0, 2*pi].

error1 = abs(vpa(a - approx1))

g1 = inline('exp(x)', 'x'); % the integrand
approx2 = Trapezoid_Uniform(g1, 0, 1, 60) % numerical integration using trapezoid rule

syms x;
g2 = exp(x);      
b = int(g2, x, 0, 1) % the actual value of the integral of exp(x) over [0, 1].

error2 = abs(vpa(b - approx2))