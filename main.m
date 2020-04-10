spacing = 1/2; %wavelengths
N = [8 19];% elements                                         
amp=ones(2,20);
phase=zeros(2,20);
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

%Part 3
AF_cheb=chebwin(19,25)

%Part 4
%ULA lambda/4 spacing
figure(3)
spacing =1/4;
[theta,array_factor_dB] = array(N(2),amp,phase,spacing)
plot(rad2deg(theta),array_factor_dB); grid on;                              
xlim([0 180]); ylim([-60 0]); title('19-element ULA, {\lambda}/4 spacing');
xlabel('\Theta (degrees)'); ylabel('Array Factor (dB)');    

%Dolph lambda/4 spacing


%ULA lambda spacing
figure(5)
spacing =1;
[theta,array_factor_dB] = array(N(2),amp,phase,spacing)
plot(rad2deg(theta),array_factor_dB); grid on;                              
xlim([0 180]); ylim([-60 0]); title('19-element ULA, {\lambda} spacing');
xlabel('\Theta (degrees)'); ylabel('Array Factor (dB)');    

%Part 5

