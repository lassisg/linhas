%DADOS
Dados
k=0;
while k<10
    Reat=input ('\n\nQual o tipo de reatância? (Utilize o número entre parenteses!)\n\n(1)Capacitiva,\n(2)Indutiva, ou\n(3)Resistência?\n');
    if Reat==1
        %REATANCIA CAPACITIVA
        Reat_C
    elseif Reat==2 
        %REATANCIA INDUTIVA
        solo=input('\nO plano do solo é considerado?\n(1)Sim\n(2)Não\n');
        if solo==1
            tipo=input('\nO solo será considerado:\n(1)Ideal, ou\n(2)Real\n');
            if tipo==1
                %SOLO IDEAL
                Reat_1
            elseif tipo==2
                metodo=input('\nQual é o método utilizado?\n(1)Carson simplificado, ou\n(2)Carson exato\n');
                if metodo==1
                    %SOLO REAL (CARSON APROXIMADO)
                    Reat_2
                elseif metodo==2
                    %SOLO REAL (CARSON EXATO)
                    fprintf('\nReat_2_A\n');
                else
                    fprintf('Utilize o número correspondente, entre parenteses!\n');	
                    return
                end
            else
                fprintf('Utilize o número correspondente, entre parenteses!\n');	
                return
            end
        elseif solo==2
            %SEM CONSIDERAR O PLANO DO SOLO
            Reat_3
        else
           fprintf('Utilize o número correspondente, entre parenteses!\n');
           return
        end
    elseif Reat==3  
        %RESISTÊNCIA 
        Resist
    else
        fprintf('Utilize o número correspondente, entre parenteses!\n');
        return
    end
    z=input('\nDeseja fazer mais algum cálculo?\n(S)\n(N)\n','s');
    if z=='S'
        k=k+1;
    elseif z=='s'
        k=k+1;
    elseif z=='N'
        k=10;
        fprintf('\n\n'); 
        fprintf('TÉRMINO DO PROGRAMA\n');
        fprintf('\n\n');
    elseif z=='n'
        k=10;
        fprintf('\n\n'); 
        fprintf('TÉRMINO DO PROGRAMA\n');
        fprintf('\n\n');
    else
        fprintf('Verifique sua escolha.\nEla deve ser "S" ou "N".');
    end
end