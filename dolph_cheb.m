function an_DC = dolph_cheb(N,dB_down) %this needs to be checked
%CST Array Synthesis does not agree with the simulation
    lobe_diff = 10^(dB_down/20);
    m = N - 1;
    u_0 = cosh((1/m)*acosh(lobe_diff));
    u_p = [];
    if mod(m,2) ~= 0
        parity = "odd";
    else
        parity = "even";
    end
    for p=1:1:ceil(m/2)
        u_p = [u_p cos(((2*p)-1)*(pi/(2*m)))];
    end
    si_p = 2*acos(u_p/u_0);
    an_DC = 1;
    if parity == "odd"
        for i=1:1:length(si_p)-1
            an_DC = conv(an_DC,[1,(-1)*(2*cos(si_p(i))),1]);
        end
        an_DC = abs(conv(an_DC,[1 -exp((1i)*si_p(length(si_p)))]));
    end
    if parity == "even"
        for i=1:1:length(si_p)
            an_DC = conv(an_DC,[1,(-1)*(2*cos(si_p(i))),1]);
        end
    end
end