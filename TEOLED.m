%% Top-Emitting OLED (TEOLED)
q = 1.602e-19;     
k_B = 1.381e-23;   
T = 300;           
n = 1.5;           
R_s = 100;         
I_0 = 1e-6;       
V_T = k_B * T / q;
V = linspace(0, 5, 100); 
I = I_0 * (exp((V / R_s + V_T) / (n * V_T)) - 1);
figure;
plot(V, I, 'b-', 'LineWidth', 2);
xlabel('Voltage (V)');
ylabel('Current (A)');
title('I-V Characteristics of TEOLED');
grid on;
