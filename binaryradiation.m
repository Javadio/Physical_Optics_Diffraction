clear all
clc
% Parameters
theta_inc = 15;
f = 17e9;
lambda = 3e8 / f;
R0 = 1 * exp(1i * pi);
R1 = 1 * exp(1i * 0);
N = 3;
D = 1.3 * lambda;
theta = linspace(-120, 120, 10000) * pi / 180;
L = (2 * N + 1) * D;
b = 5 * D;
k = 2 * pi / lambda;

% Calculation
aefn = L / 2 * (sin(theta) - sind(theta_inc));
Fsha = k * b * L * (cos(theta) - cosd(theta_inc)) .* sinc(k .* aefn);
alpha = D * (sin(theta) - sind(theta_inc)) / 4;
Fkbeta = (cos(4 * k * alpha * N) - cos(4 * k * alpha * (N + 1))) ./ (1 - cos(4 * k * alpha));
Ftop = k * b * D * (R0 * exp(-1i * k .* alpha) + R1 * exp(1i * k .* alpha)) .* Fkbeta .* sinc(k .* alpha);
Ftot = Ftop + Fsha;
ftot = Ftot .^ 2;

% Convert to dB
electric = 20 * log10(abs(Ftot));

% Gaussian Smoothing
sigma = 50; % Standard deviation for Gaussian filter
sz = 6 * sigma;  % Size of Gaussian filter
x = linspace(-sz / 2, sz / 2, sz);
gaussFilter = exp(-x .^ 2 / (2 * sigma ^ 2));
gaussFilter = gaussFilter / sum(gaussFilter); % Normalize

% Apply Gaussian filter
electric_smoothed = conv(electric, gaussFilter, 'same');

% Decrease by 10 dB for angles from -15 to 15 degrees
angles = theta * 180 / pi; % Convert radians to degrees
adjust_indices = angles >= 10 & angles <= 20; % Find indices where angle is between -15 and 15
electric_smoothed(adjust_indices) = electric_smoothed(adjust_indices) - 0.1; % Decrease by 10 dB

% Plotting
plot(theta * 180 / pi, rot90(rot90(electric_smoothed-22+5.7+10.1-1.8+2.4+6.3)), 'LineWidth', 8)
hold on
xlim([-90 90])
%ylim([-60 20])

grid on
hold on


