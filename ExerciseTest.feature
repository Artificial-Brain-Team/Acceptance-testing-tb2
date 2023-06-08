Feature: ExerciseTest
Scenario: Obtener todos los ejercicios
    Given que soy un usuario
    When solicito obtener todos los ejercicios
    Then debería recibir una lista de ejercicios

  Scenario: Obtener un ejercicio por ID
    Given que soy un usuario
    When solicito obtener un ejercicio por su ID
    Then debería recibir el ejercicio correspondiente

  Scenario: Obtener ejercicios por módulo
    Given que soy un usuario
    When solicito obtener ejercicios por módulo
    Then debería recibir una lista de ejercicios relacionados con el módulo especificado

  Scenario: Crear un nuevo ejercicio válido
    Given que soy un administrador
    When creo un nuevo ejercicio válido
    Then el ejercicio debería ser guardado correctamente

  Scenario: Crear un nuevo ejercicio con un modelo no válido
    Given que soy un administrador
    When intento crear un nuevo ejercicio con un modelo no válido
    Then debería recibir un mensaje de error indicando que el modelo es inválido

  Scenario: Actualizar un ejercicio existente
    Given que soy un administrador
    When actualizo un ejercicio existente
    Then el ejercicio debería ser actualizado correctamente

  Scenario: Eliminar un ejercicio existente
    Given que soy un administrador
    When elimino un ejercicio existente
    Then el ejercicio debería ser eliminado correctamente
