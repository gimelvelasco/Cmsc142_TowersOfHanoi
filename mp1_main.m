for N=21:30
	fprintf('%d Disk/s\n', N);
	avgTime = 0;
    for trial=1:3
    	tic
        fprintf('\tTrial %d: ',trial);
        towersOfHanoi(N,'A','B','C');
        time = toc;
        fprintf('%.6fs\n',time);
        avgTime = time + avgTime;
    end
    avgTime = avgTime/3;
    fprintf('Average Time: %.6fs\n--------------------------\n',avgTime);
end