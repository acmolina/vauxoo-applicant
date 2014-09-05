class prime_class:
    def is_prime(self):
        i=1
        m=0
        print("El siguiente programa le permite saber si el numero ingresado es primo (TRUE) o no (FALSE)")
        print(" ")
        numero=int(input("Ingrese numero: "))
# Inicio del metodo        
        while i<=numero:
            a = numero%i
            if a==0:
                m = m + 1
            i+=1
# Fin del metodo, el cual consiste en inicializar una variable en 1, despues de esto,
# se divide esa variable entre el numero ingresado y se pregunta por el residuo de
# la division, si ese residuo es cero se aumenta un contador llamado m; para saber
# si el numero es primo o no, dicho contador(m) debe terminar en 2, si no no es un
# numero primo
        print(" ")
        if m==2:
            print("TRUE")
        else:
            if numero==1:
                print("TRUE")
            else:
                print("FALSE")

x=prime_class()
x.is_prime()
