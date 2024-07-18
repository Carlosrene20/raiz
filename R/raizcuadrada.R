raiz <- function(x, guess = x / 2, tolerance = 1e-10) {
  # Verifica si la diferencia entre el cuadrado de la estimación y x es menor que la tolerancia
  if (abs(guess^2 - x) < tolerance) {
    return(guess)
  } else {
    # Actualiza la estimación y llama a la función recursivamente
    new_guess <- (guess + x / guess) / 2
    return(raiz(x, new_guess, tolerance))
  }
}
