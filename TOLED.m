%% Transparent OLED (TOLED)
q = 1.602176634e-19; 
k = 1.380649e-23;   
T = 300;          
V_bias = linspace(-3, 3, 100); 
R_series = 1000;               
R_parallel = 10000;          
J0 = 1e-6;                    
I = @(V) J0 * (exp((q*V)/(k*T)) - 1) + V / R_series;
I_total = zeros(size(V_bias));
for i = 1:length(V_bias)
    I_total(i) = V_bias(i) / R_parallel + I(V_bias(i));
end
figure;
plot(V_bias, I_total, 'b', 'LineWidth', 2);
xlabel('Voltage (V)');
ylabel('Current (A)');
title('I-V Characteristics of TOLED');
grid on;
