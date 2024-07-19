%% Bottom-Emitting OLED (BEOLED) 
q = 1.60217662e-19; 
kB = 1.38064852e-23; 
T = 300; 
Vt = kB * T / q; 
L = 100e-9;
W = 100e-6; 
mu_p = 1e-3; 
mu_n = 1e-3; 
epsilon_r = 3; 
epsilon_0 = 8.854187817e-12; 
eps_r = epsilon_r * epsilon_0; 
Vbi = 0.8;
V = linspace(-5, 5, 100); 
J = zeros(size(V));
for i = 1:length(V)
    if V(i) <= Vbi
        J(i) = q * mu_p * mu_n * eps_r * Vt^2 / L^3 * ((Vbi - V(i))^2 / (2 * Vt^2) + V(i));
    else
        J(i) = -q * mu_p * mu_n * eps_r * Vt^2 / L^3 * ((V(i) - Vbi)^2 / (2 * Vt^2) - (V(i) - Vbi));
    end
end
figure;
plot(V, J, 'LineWidth', 2);
xlabel('Voltage (V)');
ylabel('Current Density (A/m^2)');
title('I-V Characteristics of BEOLED');
grid on;
