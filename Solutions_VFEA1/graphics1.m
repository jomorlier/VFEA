%graphics
figure(1)
  set(gcf,'units','normalized');
  set(gcf,'position',[0.02 0.2 0.35 0.45]);
  set(gcf,'color','w');
  FS = 14; LW = 2;
  box on
  
  xP = tN/pi;
  
subplot(2,2,1)  
  plot(xP,xN,'r','linewidth',LW)
  hold on
 % plot(xP,yN,'b','linewidth',LW)
  set(gca,'xtick',0:2:tMax)
  xlabel('t / \pi');
  ylabel('x')
  ytickformat('%.1f')
  grid on
  txt = sprintf('m = %2.1f   b = %2.1f   k = %2.1f \n', m, b, k);
  title(txt,'fontweight','normal')
  set(gca,'fontsize',FS)
 
    
subplot(2,2,2) 
  yyaxis left
  plot(xP,vN,'r','linewidth',2)
  xlabel('t / \pi'); ylabel('v')
  grid on
  set(gca,'fontsize',FS)
  set(gca,'ycolor',[1 0 0])
  set(gca,'xtick',0:2:tMax)
  txt = sprintf('\\omega_N = %2.2f   T_N = %2.2f   \n', wN, TN);
  title(txt,'fontweight','normal')
  
  yyaxis right
  plot(xP,aaN,'m','linewidth',1.2)
%  ylim([-1 1])
  xlabel('t / \pi'); ylabel('a')
  set(gca,'ycolor',[1 0 1])
  
subplot(2,2,3)  
  plot(xN,vN,'r','linewidth',LW)
  hold on
  plot(x0,v0,'go','markerfacecolor','g','markersize',6)
  xlabel('x'); ylabel('v')
  grid on; axis tight
%  xlim([-1.1 1.1])
  %ylim([-2.1, 2.1])
  %set(gca,'xtick',-1:0.5:1)
  %set(gca,'ytick',-2:1:2)
  xtickformat('%.1f')
  ytickformat('%.1f')
  set(gca,'fontsize',FS)
    
subplot(2,2,4)  
  plot(xP,fN,'b','linewidth',LW)
  xlabel('t / \pi'); ylabel('f')
  title(txt_Input,'fontweight','normal')
  grid on
  set(gca,'fontsize',FS)  

   