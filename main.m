spacing = 1/2; %wavelengths
N = [8 19];% elements                                         
amp=ones(1,20);
phase=zeros(1,20);
%Part 2
figure(1)
[theta,array_factor_dB] = array(N(1),amp,phase,spacing);                    
plot(rad2deg(theta),array_factor_dB); grid on;                              
xlim([0 180]); ylim([-60 0]); title('8-element ULA, {\lambda}/2 spacing');
xlabel('\Theta (degrees)'); ylabel('Array Factor (dB)');                   
dir = directivity(theta,array_factor_dB)                                 
bw_3dB = BW_3dB(theta,array_factor_dB)                                      
sidepeak = side_lobes(array_factor_dB)                               

figure(2)
[theta,array_factor_dB] = array(N(2),amp,phase,spacing);                    
plot(rad2deg(theta),array_factor_dB); grid on;                              
xlim([0 180]); ylim([-60 0]); title('19-element ULA, {\lambda}/2 spacing'); 
xlabel('\Theta (degrees)'); ylabel('Array Factor (dB)');                    
dir = directivity(theta,array_factor_dB)                                
bw_3dB = BW_3dB(theta,array_factor_dB)                                     
sidepeak = side_lobes(array_factor_dB)          
%%
%Part 3
figure(3)
amp=chebwin(19,25)
[theta,array_factor_dB] = array(N(2),amp,phase,spacing);                    
plot(rad2deg(theta),array_factor_dB); grid on;                              
xlim([0 180]); ylim([-60 0]); title('19-element Dolph Chebyshev, {\lambda}/2 spacing'); 
xlabel('\Theta (degrees)'); ylabel('Array Factor (dB)');                    
dir = directivity(theta,array_factor_dB)                                
bw_3dB = BW_3dB(theta,array_factor_dB)                                     
sidepeak = side_lobes(array_factor_dB)
%%
%Part 4
%ULA lambda/4 spacing
figure(4)
spacing =1/4;
amp=ones(1,20);
[theta,array_factor_dB] = array(N(2),amp,phase,spacing)
plot(rad2deg(theta),array_factor_dB); grid on;                              
xlim([0 180]); ylim([-60 0]); title('19-element ULA, {\lambda}/4 spacing');
xlabel('\Theta (degrees)'); ylabel('Array Factor (dB)');    

%Dolph lambda/4 spacing
figure(5)
spacing =1/4;
amp=chebwin(19,25);
[theta,array_factor_dB] = array(N(2),amp,phase,spacing);                    
plot(rad2deg(theta),array_factor_dB); grid on;                              
xlim([0 180]); ylim([-60 0]); title('19-element Dolph Chebyshev, {\lambda}/4 spacing'); 
xlabel('\Theta (degrees)'); ylabel('Array Factor (dB)');                    
dir = directivity(theta,array_factor_dB)                                
bw_3dB = BW_3dB(theta,array_factor_dB)                                     
sidepeak = side_lobes(array_factor_dB)


%ULA lambda spacing
figure(6)
spacing =1;
amp=ones(1,20);
[theta,array_factor_dB] = array(N(2),amp,phase,spacing)
plot(rad2deg(theta),array_factor_dB); grid on;                              
xlim([0 180]); ylim([-60 0]); title('19-element ULA, {\lambda} spacing');
xlabel('\Theta (degrees)'); ylabel('Array Factor (dB)');    

%Dolph Lambda spacing
figure(7)
spacing =1;
amp=chebwin(19,25);
[theta,array_factor_dB] = array(N(2),amp,phase,spacing);                    
plot(rad2deg(theta),array_factor_dB); grid on;                              
xlim([0 180]); ylim([-60 0]); title('19-element Dolph Chebyshev, {\lambda} spacing'); 
xlabel('\Theta (degrees)'); ylabel('Array Factor (dB)');                    
dir = directivity(theta,array_factor_dB)                                
bw_3dB = BW_3dB(theta,array_factor_dB)                                     
sidepeak = side_lobes(array_factor_dB)
%%
%Part 5
figure(8)
phase=[pi 0 pi 0 pi 0 pi 0 pi 0 pi 0 pi 0 pi 0 pi 0 pi 0 pi];
spacing =1/2;
amp=chebwin(19,25);
[theta,array_factor_dB] = array(N(2),amp,phase,spacing);                    
plot(rad2deg(theta),array_factor_dB); grid on;                              
xlim([0 180]); ylim([-60 0]); title('19-element Dolph Chebyshev with varying phase, {\lambda}/2 spacing'); 
xlabel('\Theta (degrees)'); ylabel('Array Factor (dB)');                    
dir = directivity(theta,array_factor_dB)                                
bw_3dB = BW_3dB(theta,array_factor_dB)                                     
sidepeak = side_lobes(array_factor_dB)

