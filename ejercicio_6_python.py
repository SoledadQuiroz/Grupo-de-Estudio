#tupla base:
historial2 = (23500, 5960, 2300, 10200, 8900)

#funcion 1: calcula los gastos mayores a $5.000
def gastos_mayores(elem):
    contador = 0
    for i in elem:
        if i > 5000:
            contador += 1
    print(f"gastos mayores a $5.000: {contador}")
    
#funcion 2: calcula cuanto se gasto en total por todas las
# consultas / servicios.
def gastos_totales(elem):
    contador = 0
    for i in elem:
        contador += i
    print(f"gastos totales en atención a Frida: ${contador}")

#ejecutando funciones:
gastos_mayores(historial2)
gastos_totales(historial2)
