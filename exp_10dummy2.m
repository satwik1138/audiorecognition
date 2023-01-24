for j = 1:2
for t = 1:1000
    if (j == 1)
    edsav(t,j) = esd3(t);
    else
      edsav(t,j) = esd2(t);
    end
end
end
disp (edsav(579,1));
disp (esd3(579));
disp(edsav(579,2));
disp(esd2(579));