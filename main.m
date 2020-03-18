spacing = 1/2; %wavelengths
N = [10 20];% elements
amp = [1 1 1 1 1 1 1 1 1 1; 1 1 1 1 1 1 1 1 1 1];                                                
phase = [0 0 0 0 0 0 0 0 0 0; 0 0 0 0 0 0 0 0 0 0];                                            

figure(1)
[theta,array_factor_dB] = array(N(1),amp,phase,spacing);                    
plot(rad2deg(theta),array_factor_dB); grid on;                              
xlim([0 180]); ylim([-60 0]); title('10-element ULA, {\lambda}/2 spacing');
xlabel('\Theta (degrees)'); ylabel('Array Factor (dB)');                   
dir = directivity(theta,array_factor_dB)                                 
3db = BW_3dB(theta,array_factor_dB)                                      
sidepeak = side_lobes(array_factor_dB)                               

figure(2)
[theta,array_factor_dB] = array(N(2),amp,phase,spacing);                    
plot(rad2deg(theta),array_factor_dB); grid on;                              
xlim([0 180]); ylim([-60 0]); title('20-element ULA, {\lambda}/2 spacing'); 
xlabel('\Theta (degrees)'); ylabel('Array Factor (dB)');                    
dir = directivity(theta,array_factor_dB)                                
3db = BW_3dB(theta,array_factor_dB)                                     
sidepeak = side_lobes(array_factor_dB)                               