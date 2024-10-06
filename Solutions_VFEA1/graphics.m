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

  
figure(2)  % ========================================================
  set(gcf,'units','normalized');
  set(gcf,'position',[0.4 0.2 0.35 0.45]);
  set(gcf,'color','w');
  FS = 14; LW = 2;
  box on
  
subplot(2,2,1)
  plot(wD,Gmag,'r','linewidth',LW)
  hold on
  plot([w w], [0 Gw_mag],'k','linewidth',1)
  plot([0 w], [Gw_mag Gw_mag],'k','linewidth',1)
  plot(w,Gw_mag,'ro','markerfacecolor','r','markersize',8)
  
  txt = sprintf('   \\omega_N = \\omega_R = %2.2f   \\omega = %2.2f    |G| = %2.2f  \n',wN, w, Gw_mag);
  title(txt,'fontweight','normal')
 % ylim([0 1.2])
  xlabel('\omega_D')
  ylabel('|G|')
  grid on
  set(gca,'fontsize',FS)
  
subplot(2,2,2)
  plot(wD,-phi,'b','linewidth',LW)
  hold on
  plot([w w], [-1 -phi_w],'k','linewidth',1)
  plot([0 w], [-phi_w -phi_w],'k','linewidth',1)
  plot(w,-phi_w,'ro','markerfacecolor','r','markersize',8)
  
 % ylim([-0.6 0.6])
  xlabel('\omega_D')
  ylabel('- \phi / \pi')
  
  txt = sprintf('   \\phi = %2.2f \\pi  \\deltat = %2.2f   \n',phi_w,dt);
  text(0,0.54,txt,'fontsize',14)
   
  grid on  
  set(gca,'fontsize',FS)
  
subplot(2,2,3)
  plot(real(G),imag(G),'k','linewidth',1)
  hold on
  plot([0 real(Gw)], [0 imag(Gw)],'r','linewidth',1)
  plot(real(Gw),imag(Gw),'ro','markerfacecolor','r','markersize',8)
  
  plot(real(G),imag(G),'k','linewidth',1)
  
%  xlim([-1.5*A 1.5*A])
%  ylim([-1.5*A 1.5*A])
      
  xlabel('real(G)')
  ylabel('imag(G)')
  txt = sprintf('\\phi = %2.2f \\pi = %2.2f  deg   \n',phi_w, phi_w*180);
  title(txt,'fontweight','normal')
  grid on  
  axis square
  set(gca,'fontsize',FS) 
  
 
  subplot(2,2,4)
   c = linspace(-pi,pi,501);
   plot(cos(c),sin(c))
   hold on
   plot([0 0],[-1 1],'k')
   plot([-1 1],[0 0],'k')
   plot([ 0 A.*sin(w*tN(1))./Gw_mag],[0 A.*cos(w*tN(1))./Gw_mag],'b','linewidth',2)
   plot([ 0 sin(w*tN(1)-phi_w*pi)],[0 cos(w*tN(1)-phi_w*pi)],'r','linewidth',2)
   xlim([-1 1])
   ylim([-1 1])
   axis square
   axis off
   
  if phi_w > 0
      txt = 'OUT leads IN';
      text(-0.8,1.2,txt,'fontsize',12)
  end
  
  if phi_w < 0
      txt = 'OUT lags IN';
      text(-0.8,1.2,txt,'fontsize',12)
  end
   
   set(gca,'fontsize',FS) 
   