% Signal Filtering Simulation

fs = 1000;        % Sampling frequency
t = 0:1/fs:1;     % Time vector
f1 = 50; f2 = 200;

x = sin(2*pi*f1*t) + 0.5*sin(2*pi*f2*t);  % Composite signal
[b,a] = butter(4,100/(fs/2));             % Low-pass filter at 100 Hz
y = filter(b,a,x);                        % Apply filter

figure;
subplot(2,1,1); plot(t,x); title('Original Signal');
subplot(2,1,2); plot(t,y); title('Filtered Signal (LPF < 100 Hz)');
