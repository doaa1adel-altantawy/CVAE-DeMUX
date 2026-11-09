% Vertical structure - Channel 2: Gap tolerance analysis
% Values transcribed from the supplied handwritten table.
% Gap variation (%) is relative to the original design (0%).
clearvars; close all; clc;
gap = [-8 -6 -4 -2 0 2 4 6 8];
P2 = [0.62 0.58 0.60 0.60 0.60 0.60 0.60 0.57 0.55];
FWHM2 = [46 46 40 40 40 40 40 38 37]; % nm

figure('Color','w','Position',[150 150 780 490]);
yyaxis left
hF = plot(gap, FWHM2, 'o', 'Color',[0 0 1], 'MarkerFaceColor',[0 0 1], ...
    'MarkerSize',8, 'LineStyle','none');
ylabel('FWHM (nm)','FontWeight','bold');
ax = gca;
ax.YColor = [0 0 1];
ylim([34 48]); yticks(34:2:48);

yyaxis right
hP = plot(gap, P2, 'd', 'Color',[1 0 0], 'MarkerFaceColor',[1 0 0], ...
    'MarkerSize',8, 'LineStyle','none');
ylabel('Transmission Power','FontWeight','bold');
ax.YColor = [1 0 0];
ylim([0.52 0.64]); yticks(0.52:0.02:0.64);

xlabel('Gap Variation (%)','FontWeight','bold');
title('Vertical Structure - Channel 2 Gap Tolerance','FontWeight','bold');
xlim([-8.5 8.5]); xticks(-8:2:8);
legend([hP hF], {'Transmission Power','FWHM'}, 'Location','southwest','Box','off');
set(gca,'FontName','Arial','FontSize',12,'LineWidth',1.1,'Box','on');
