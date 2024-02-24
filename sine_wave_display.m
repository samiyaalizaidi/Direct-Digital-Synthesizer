% open the text file
file = fopen('log-125KHz.txt', 'r');

% read the data
data = textscan(file, 'Time: %f, Phase: %d, Data_sin: %d');

% close the file
fclose(file);

% extract the data
time = data{1};
phase = data{2};
data_sin = data{3};

% display the arrays
disp('Time:');
disp(time);
disp('Phase:');
disp(phase);
disp('Data_sin:');
disp(data_sin);

% plot the graphs
figure;
plot(phase, data_sin, "r", "LineWidth", 2);
hold on
stairs(phase, data_sin, "b", "LineWidth", 1);
hold off

% add relevant labels
legend('Analog', 'Digital');
xlabel('Phase');
ylabel('Amplitude');
title('Sine Wave Generated Using DDS at 125KHz');

grid on;
