Feature: UserTest

  Scenario: Obtener todos los usuarios
    Given que soy un usuario
    When solicito obtener todos los usuarios
    Then debería recibir una lista de respuestas de usuarios

  Scenario: Obtener un usuario por ID
    Given que soy un usuario
    When solicito obtener un usuario por su ID
    Then debería recibir la respuesta del usuario correspondiente

  Scenario: Obtener usuarios por módulo
    Given que soy un usuario
    When solicito obtener usuarios por módulo
    Then debería recibir una lista de respuestas de usuarios relacionados con el módulo especificado

  Scenario: Crear un nuevo usuario válido
    Given que soy un usuario
    When creo un nuevo usuario válido
    Then el usuario debería ser guardado correctamente

  Scenario: Crear un nuevo usuario con un modelo no válido
    Given que soy un usuario
    When intento crear un nuevo usuario con un modelo no válido
    Then debería recibir un error de solicitud inválida

  Scenario: Actualizar un usuario existente
    Given que soy un usuario
    When actualizo un usuario existente
    Then el usuario debería ser actualizado correctamente

  Scenario: Eliminar un usuario existente
    Given que soy un usuario
    When elimino un usuario existente
    Then el usuario debería ser eliminado correctamente
