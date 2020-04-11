function [theta,array_factor_dB] = array(N,amp,phase,spacing)
    lambda = 1;%lambda is arbitrary because it cancels out
    d = lambda*spacing;
    kd = ((2*pi)/lambda)*d;
    theta = 0:pi/1024:pi;
    array_factor = zeros(1,length(theta));
    for n = 1:1:N %using complex exp
          array_factor = array_factor +amp(n)*exp(1i*phase(n))*exp(1i*(n-1)*(kd*cos(theta)));
    end
    array_factor_dB = 20*log10(abs(array_factor)/max(abs(array_factor)));
end