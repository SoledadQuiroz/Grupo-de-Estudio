historial3=(9530, 4120, 4580, 1500, 890, 7516, 426)
total=0
for i in historial3:
    total= i +total
    
total= total/(len(historial3))

print("El promedio de gasto de su mascota Lennon es", int(total))

if total > 4500:
    print("Se ha excedido del gasto promedio para su mascota.")
