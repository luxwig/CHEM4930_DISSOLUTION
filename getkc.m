function kc = getkc(v, mu, Dp, Dab, rho)
    Nsc = mu/(rho*Dab);
    Nre = Dp*v*rho/mu;
    Nsh_1 = 2+0.95.*Nre.^0.5.*Nsc.^(1/3);
    Nsh_2 = 0.347.*Nre.^0.62.*Nsc.^(1/3);
    Nsh = (Nre<=2000).*Nsh_1 + (Nre>2000).*Nsh_2;
    kc = Nsh*Dab/Dp;

