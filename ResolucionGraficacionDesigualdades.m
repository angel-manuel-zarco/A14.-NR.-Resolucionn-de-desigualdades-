%Octave Script
%School:       Tecnologico de Estudios Superiores de Jilotepec
%Title:        Resolucion de desigualdades
%Descripcion:  Esto lo haremos para que Octave nos pueda resolver una inecuacion
%              de primer grado, una de segundo grado y otra de tercer grado,
%              estas tambien las tendremos que graficar
%Author:       Jorge Miranda Zuñiga
%Team:         1. Jorge Miranda Zuñiga
%              2. Angel Jesus Santiago Hernández
%              3. Angel Manuel Zarco Valerio
%Date:         07/10/2021
%Version:      42
%Usage:        >>pwd
%              >>cd Desktop
%              >>cd Octave
%              >>ResolucionGraficacionDesigualdades

%Notes:        1. Se necesita el programa Octave, usar su linea de comando.
%              2. Para iniciar debes cargar symbolic, si no lo tienes ingresa al
%              siguiente link https://youtu.be/GE3NTUTeAw0 en el minuto 2:40
%              3. Si ya tienes symbolic instalado, se cargara auntomaticamente al
%              ejecutar el programa.
%              4. https://octaveintro.readthedocs.io/en/latest/index.html

pkg load symbolic;  %Esto va a cargar symbolic al iniciar Octave

%Inecuacion de primer grado
syms x %Declaramos la variable x, la declaramos en cada una de las inecuaciones
disp ("---La inecuacion de primer grado es:")
disp ("---7*x+5*x<2*x-10")
PrimerGrado = solve(7*x+5*x<2*x-10, 'ReturnConditions')%ReturnConditions lo usaremos para que nos de el resultado
                                                       %que buscamos, ya que si no hacemos esto nos marcara error
disp ("---El intervalo seria: (-oo,-1)")
x = [-6:0.2:-1];
y = zeros(1,length(x));                   
subplot (2,2,1); %subplot nos sirve para graficar mas de una grafica en una ventana
plot(x,y);
xlabel("X"); %con esto le ponemos nombre al eje de las x
ylabel("-oo");  %con esto le ponemos nombre al eje de las y
title('(-oo,-1)'); %con esto le ponemos nombre a nuestra grafica

%Inecuacion de Segundo grado       
syms x        
disp ("---La inecuacion de segundo grado es:")
disp ("---x^2+25 < 30")              
SegundoGrado = solve(x^2+25 < 30, x, 'ReturnConditions')                                  
disp ("---El intervalo seria: (-v5,v5)-->(-2.236,2.236)")
x = [-2.236:0.5:2.5];
y = zeros(1,length(x));                    
subplot (2,2,2);
plot(x,y);
xlabel("X");
ylabel("Y");
title('(-v5,v5)');

%inecuacion de valor absoluto
syms x 
disp ("---La inecuacion con valor absoluto es:")
disp ("---abs(x/2-1)<=1")              
ValorAbsoluto = solve (abs(x/2-1)<=1, 'ReturnConditions')                                
disp ("---El intervalo seria: [0,4]")
x = [0:0.2:4];
y = zeros(1,length(x));
subplot (2,2,3);
plot (x,y);
xlabel("X");
ylabel("Y");
title('[0,4]');
