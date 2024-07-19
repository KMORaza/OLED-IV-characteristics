%% White OLED (WOLED)
V = linspace(0, 10, 100); 
R_series = 100; 
V_on = 2.5; 
I_s = 1e-6; 
I_diode = I_s * (exp((V - V_on) / (0.0259)) - 1);
I_total = (V - V_on) / R_series + I_diode;
figure;
plot(V, I_diode, 'b', 'LineWidth', 2); hold on;
plot(V, (V - V_on) / R_series, 'r', 'LineWidth', 2);
plot(V, I_total, 'k', 'LineWidth', 2);
xlabel('Voltage (V)');
ylabel('Current (A)');
title('I-V Characteristics of OLED');
legend('Diode Current (I_D)', 'Series Resistance Current (V/R)', 'Total Current (I)');
grid on;
hold off;
