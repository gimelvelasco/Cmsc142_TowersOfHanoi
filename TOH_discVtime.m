function time = TOH_discVtime()
    discs = 10000;
    x = discs;
	a = 1.123*10^(-5);
	b = 0.4842;
	c = 1.572*10^(-7);
	d = 0.7074;
	time = a*exp(b*x) + c*exp(d*x);
end