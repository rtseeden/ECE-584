function side_lobe_peaks = side_lobes(array_factor_dB)
    peaks = [];
    abs_ampl = abs(array_factor_dB);
    for n = 2:1:length(array_factor_dB)-1
        if (abs_ampl(n-1)>abs_ampl(n)) && (abs_ampl(n)<abs_ampl(n+1))
            peaks = [peaks array_factor_dB(n)];
        end
    end
    main_beam = length(peaks)-floor(length(peaks)/2);
    side_lobe_peaks = [peaks(1:main_beam-1) peaks(main_beam+1:end)];
end