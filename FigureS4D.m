YEAR = ncread('./PlioMio_Adjustment_Timeseries.nc','year')
PMOC_max_strmfunct = ncread('./PlioMio_Adjustment_Timeseries.nc','PMOC_max')
grad_SST = ncread('./PlioMio_Adjustment_Timeseries.nc','delta_SST')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PLOT FIGURE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%a%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure('Units','centimeters',...
       'Position',[9.9831   -8.0654   10   5],...
       'PaperPosition',[1 1 10 5],...
       'PaperUnits','centimeters')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure_name='ShankleEtAl_FigS4D';
fontsize=12;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  
    [AX,h1,h2]=plotyy(YEAR,smooth(PMOC_max_strmfunct,50),YEAR,smooth(grad_SST,50));
  hold on;

  set(gca,'box','off'); 

  set(AX(1),'XTick',[0:400:3000]);
  set(AX(1),'YTick',[0:2:16]);
  set(AX(1),'Ylim',[0 16.5]);
  set(AX(1),'Xlim',[0 3000]);
  %set(AX(1), 'position',[0.1300 0.2100 0.7750 0.8150]);
    
  set(AX(2),'XTick',[0:400:3000]);
  set(AX(2),'YTick',[0:1:4]);
  set(AX(2),'Ylim',[0 4]);
  set(AX(2),'Xlim',[0 3000]);
  %set(AX(2), 'position',[0.1300 0.2100 0.7750 0.8150]);
  
  set(AX(1),'fontsize',15)
  set(AX(2),'fontsize',15)

  ylabel(AX(1),'Max PMOC Streamfunction (Sv)','fontsize',20);
  ylabel(AX(2),'{\Delta}SST (C)','fontsize',20);
  
  xlabel('Year','fontsize',20);

%%%%%%%%%%%%%%%%%%%%%%
  H=gcf;
  set(H,'color','white');
  hold off;
  
  handle = getframe(gcf);

  filename = strcat(figure_name,'.eps');
  print('-depsc2',filename);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



  




   