clc

fx = input("INGRESE LA FUNCION: ", "S")
funcion = inline(fx)

a = input("INGRESE EL VALOR DEL LIMITE INFERIOR a: ");
b = input("INGRESE EL VALOR DEL LIMITE SUPERIOR b: ");
n = input("INGRESE EL VALOR n: ");

deltaX = (b - a)/n

i = 0;
Xi = a;

#f(Xi) i = 0,1,2,3,4,5,6
Fx0 = 0; Fx1 = 0; Fx2 = 0; Fx3 = 0; Fx4 = 0; Fx5 = 0; Fx6 = 0;

while  i <= n
 
    if i == 0 Fx0 = funcion(Xi); end  
  
    Xn = Xi + deltaX;
    Xi = Xn;
    i++;
    
    if i == 1 Fx1 = funcion(Xi);  end
     
    if i == 2 Fx2 = funcion(Xi);  end
      
    if i == 3 Fx3 = funcion(Xi);  end
     
    if i == 4 Fx4 = funcion(Xi);  end
     
    if i == 5 Fx5 = funcion(Xi);  end
      
    if i == 6 Fx6 = funcion(Xi);  end
 
  
 endwhile

 
resultado = (deltaX/2)*(Fx0 + 2*(Fx1) + 2*(Fx2) + 2*(Fx3) + 2*(Fx4) + 2*(Fx5) + Fx6);
fprintf("EL RESULTADO ES: %0.4f\n", resultado)
