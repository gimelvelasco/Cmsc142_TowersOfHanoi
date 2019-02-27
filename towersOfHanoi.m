function towersOfHanoi(N, src, aux, dst)
	if N == 1
		%fprintf('Disk %d from %c to %c.\n', N, src, dst);
	else
		towersOfHanoi(N-1, src, dst, aux);
		%fprintf('Disk %d from %c to %c.\n', N, src, dst);
		towersOfHanoi(N-1, aux, src, dst);
	end
end