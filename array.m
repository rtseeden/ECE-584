function [theta,array_factor_dB] = array(N,amp,phase,spacing)
    lambda = .5;
    d = lambda*spacing;
    kd = ((2*pi)/lambda)*d;
    beta = 0;
    theta = 0:pi/1024:pi;
    psi = kd*cos(theta)+beta;
    array_factor = zeros(1,length(theta));
    n = 1:N;
%     for n = 1:1:N/2 %using complex exp
%         array_factor(i) = sum(exp(1i*(n-1).*psi(i).*exp(phase(n))));
%         
%         array_factor = array_factor +...
%         amp(1,n)*exp(phase(1,n))*exp(1i*(((2*n)-1)/2)*(kd*cos(theta)+beta)) +...
%         amp(2,n)*exp(phase(2,n))*exp(-1i*(((2*n)-1)/2)*(kd*cos(theta)+beta));
%         phase(1,n)
%         phase(2,n)
%     array_factor_dB = 20*log10(abs(array_factor)/max(abs(array_factor)));
%     end

    for i = 1:length(theta) %using complex exp
        array_factor(i) = sum(amp(n).*exp(1i*(n-1).*psi(i).*exp(1i*phase(n))));
    end
    
    array_factor_dB = 20*log10(abs(array_factor)/max(abs(array_factor)));
end