class calculator_class:
    def sum(self):
#Ingreso del numero de datos que desea sumar
        n=int(input("Cuantos datos desea sumar ? : "))
        a=list(range(n))
        k=0
#Inicio de llenado de la lista
        while k<n:
            a[k]=int(input("Ingrese dato "))
            k=k + 1
#Fin de llenado de la lista
        k=0
        suma=0
#Inicio de la suma de cada dato contenido en la lista
        while k<n:
            suma=suma + a[k]
            k=k + 1
#Fin de la suma
        print("------------")
#Muestra del resultado de la suma
        print("Resultado: ",suma)


x=calculator_class()
x.sum()
