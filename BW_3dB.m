function bw_3dB = BW_3dB(theta,array_factor_dB)
    half = floor(length(array_factor_dB)/2);
    [~,index_low] = min(abs(array_factor_dB(1:half)+3));
    [~,index_high] = min(abs(array_factor_dB(half+1:end)+3));
    bw_3dB = rad2deg(theta(half+index_high)-theta(index_low));
end