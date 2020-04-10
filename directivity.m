function D_0_dB = directivity(theta,array_factor_dB)
 array_factor = 10.^(array_factor_dB/10);
    U_0 = 0.5*trapz(theta,(array_factor.*sin(theta))); %balanis def
    U_max = 1;
    D_0_dB = 10*log10(abs(U_max/U_0));
end