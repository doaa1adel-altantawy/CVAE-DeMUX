% Channel 2 - Gap Tolerance Analysis
% Data transcribed from the supplied gap-variation table.
close all;
clc;

% Percentage change in the gap (baseline at 0%)
gapVariation = [-8 -6 -4 -2 0 2 4 6 8];

% Channel 2: transmission power and full width at half maximum (nm)
transmissionPower = [0.56 0.54 0.54 0.54 0.54 0.54 0.54 0.54 0.50];
fwhm_nm = [26 24 24 24 24 24 24 24 23];

figure('Color','w','Position',[150 150 750 550]);

% Left vertical axis: FWHM
yyaxis left;
hFWHM = plot(gapVariation, fwhm_nm, 'o', ...
    'LineStyle','none','MarkerSize',8,'MarkerFaceColor','b', ...
    'MarkerEdgeColor','b');
ylabel('FWHM (nm)','FontSize',14,'FontWeight','bold','Color','b');
ylim([21 28]);
yticks(21:28);
set(gca,'YColor','b');
hold on;

% Right vertical axis: transmission power
yyaxis right;
hPower = plot(gapVariation, transmissionPower, 'd', ...
    'LineStyle','none','MarkerSize',7,'MarkerFaceColor','r', ...
    'MarkerEdgeColor','r');
ylabel('Transmission Power','FontSize',14,'FontWeight','bold','Color','r');
ylim([0.48 0.58]);
yticks(0.48:0.01:0.58);
set(gca,'YColor','r');

xlabel('Gap Variation (%)','FontSize',14,'FontWeight','bold');
xlim([-8.25 8.25]);
xticks(-8:2:8);
title('Channel 2 Gap Tolerance','FontSize',16,'FontWeight','bold','Color','k');
legend([hPower hFWHM],{'Transmission Power','FWHM'}, ...
    'Location','southwest','Box','off','FontSize',12);
set(gca,'FontSize',12,'LineWidth',1.1,'Box','on');
