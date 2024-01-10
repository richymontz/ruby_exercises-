def productos_sin_elemento_actual(arr)
  n = arr.length

  # Crear un array para almacenar los productos a la izquierda de cada elemento
  productos_izquierda = [1]
  producto = 1
  (1...n).each do |i|
    producto *= arr[i - 1]
    productos_izquierda << producto
  end

  # Crear un array para almacenar los productos a la derecha de cada elemento
  productos_derecha = [1]
  producto = 1
  (n - 2).downto(0).each do |i|
    producto *= arr[i + 1]
    productos_derecha.unshift(producto)
  end

  # Multiplicar los productos a la izquierda y a la derecha para obtener el resultado final
  resultado = []
  (0...n).each do |i|
    resultado << productos_izquierda[i] * productos_derecha[i]
  end

  resultado
end

# Ejemplo de uso
input_array = [1, 2, 3, 4]
resultado = productos_sin_elemento_actual(input_array)
puts resultado.inspect # Debería imprimir [24, 12, 8, 6]
