
files = {'supraledning_down.csv','supraledning_up.csv'};
col = 'br';
plt = {'b*','r.'};
for i = 1:2
    
    M = csvread(files{i},1);

    t = M(:,1);
    UA1 = M(:,2);
    UB1 = M(:,3);
    T = M(:,4);

    plot(T,UB1,plt{i})
    hold on
end
%% nice it up!

ylabel('Voltage U_B_1 [V]','FontSize',12)
xlabel('Temperature T [K]','FontSize',12)
legend('cooling','heating')
grid on
title('Voltage over superconducting material','FontSize',12)