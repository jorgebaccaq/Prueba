clear all
close all
clc

% the signal 
f = rand(28*28,1);

% Real sensing
compresion = 0.05;
H_binary = round(rand(round(compresion*28*28),28*28));
y_b = H_binary*f;

H_ones = ones(1,28*28);
y_ones = H_ones*f;

y =  y_b*2-y_ones;

% simulated sensing

H_neg = H_binary*2-1;
y_neg = H_neg*f;



figure, subplot(1,2,1), imagesc(H_binary), title('DMD sensing matrix'), colorbar()
subplot(1,2,2), imagesc(H_neg), title('\{-1,1\} sensing matrix'), colorbar()
norm(y_neg-y)

