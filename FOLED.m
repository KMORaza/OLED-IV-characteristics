%% Foldable OLED (FOLED) 
q = 1.602e-19;   
kB = 1.381e-23;  
T = 300;        
V = linspace(-5, 5, 100);  
I0 = 1e-6;       
n = 1.5;          
I = I0 * (exp(q * V / (n * kB * T)) - 1);
figure;
plot(V, I, 'LineWidth', 2);
xlabel('Voltage (V)');
ylabel('Current (A)');
title('I-V Characteristics of FOLED');
grid on;
