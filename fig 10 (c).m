% Channel 1 - Gap variation / fabrication tolerance
% Data transcribed from the supplied handwritten table.
% Gap variation is relative to the nominal (0%) geometry.
% Transmission power is a dimensionless fraction (0 to 1).
% FWHM is in nanometers.

clearvars; close all; clc;

gapVariation = [-8 -6 -4 -2 0 2 4 6 8];  % percent
P1 = [0.47 0.47 0.47 0.47 0.47 0.47 0.47 0.46 0.40];
FWHM1 = [12 11 11 11 11 11 11 11 11]; % nm

figure('Color','w','Position',[200 200 720 500]);

% Left y-axis: bandwidth (blue circular markers)
yyaxis left;
hF = plot(gapVariation, FWHM1, 'o', ...
    'MarkerFaceColor','b', 'MarkerEdgeColor','b', ...
    'MarkerSize',8, 'LineStyle','none');
ylabel('FWHM (nm)', 'FontSize',14, 'FontWeight','bold');
ax = gca;
ax.YColor = 'b';
ylim([10 13]);
yticks(10:0.5:13);

% Right y-axis: transmission power (red diamond markers)
yyaxis right;
hP = plot(gapVariation, P1, 'd', ...
    'MarkerFaceColor','r', 'MarkerEdgeColor','r', ...
    'MarkerSize',8, 'LineStyle','none');
ylabel('Transmission Power', 'FontSize',14, 'FontWeight','bold');
ax.YColor = 'r';
ylim([0.38 0.50]);
yticks(0.38:0.02:0.50);

xlabel('Gap Variation (%)', 'FontSize',14, 'FontWeight','bold');
xlim([-8.5 8.5]);
xticks(-8:2:8);
ax.FontSize = 12;
ax.LineWidth = 1.2;
box on;
legend([hP hF], {'Transmission Power','FWHM'}, ...
    'Location','southwest', 'Box','off', 'FontSize',12);
title('Channel 1: Gap Tolerance', 'FontSize',14);

% Optional: save a high-resolution image once you verify the plot:
% exportgraphics(gcf, 'Channel1_Gap_Tolerance.png', 'Resolution',300);
