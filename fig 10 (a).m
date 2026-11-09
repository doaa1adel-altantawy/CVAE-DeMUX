% Vertical structure - Channel 1: Gap tolerance analysis
% Values transcribed from the supplied handwritten table.
% Gap variation (%) is relative to the original design (0%).
clearvars; close all; clc;
gap = [-8 -6 -4 -2 0 2 4 6 8];
P1 = [0.72 0.69 0.75 0.75 0.75 0.75 0.75 0.70 0.62];
FWHM1 = [38 32 28 28 28 28 28 27 27]; % nm

figure('Color','w','Position',[150 150 780 490]);
yyaxis left
hF = plot(gap, FWHM1, 'o', 'Color',[0 0 1], 'MarkerFaceColor',[0 0 1], ...
    'MarkerSize',8, 'LineStyle','none');
ylabel('FWHM (nm)','FontWeight','bold');
ax = gca;
ax.YColor = [0 0 1];
ylim([24 40]); yticks(24:2:40);

yyaxis right
hP = plot(gap, P1, 'd', 'Color',[1 0 0], 'MarkerFaceColor',[1 0 0], ...
    'MarkerSize',8, 'LineStyle','none');
ylabel('Transmission Power','FontWeight','bold');
ax.YColor = [1 0 0];
ylim([0.58 0.78]); yticks(0.58:0.02:0.78);

xlabel('Gap Variation (%)','FontWeight','bold');
title('Vertical Structure - Channel 1 Gap Tolerance','FontWeight','bold');
xlim([-8.5 8.5]); xticks(-8:2:8);
legend([hP hF], {'Transmission Power','FWHM'}, 'Location','southwest','Box','off');
set(gca,'FontName','Arial','FontSize',12,'LineWidth',1.1,'Box','on');
