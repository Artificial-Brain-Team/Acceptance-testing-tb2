Feature: CountryTest
  Scenario: Obtener todos los países
    Given que soy un usuario
    When realizo una solicitud para obtener todos los países
    Then debo recibir una lista de países

  Scenario: Obtener un país por ID
    Given que soy un usuario
    When realizo una solicitud para obtener un país por su ID
    Then debo recibir el país con el ID especificado

  Scenario: Crear un nuevo país
    Given que soy un usuario
    When realizo una solicitud para crear un nuevo país
    Then el nuevo país debe ser guardado correctamente

  Scenario: Crear un nuevo país con datos inválidos
    Given que soy un usuario
    When realizo una solicitud para crear un nuevo país con datos inválidos
    Then debo recibir un código de estado 400 (Solicitud incorrecta)

  Scenario: Actualizar un país existente
    Given que soy un usuario
    When realizo una solicitud para actualizar un país existente
    Then el país con el ID especificado debe ser actualizado correctamente

  Scenario: Eliminar un país existente
    Given que soy un usuario
    When realizo una solicitud para eliminar un país existente
    Then el país con el ID especificado debe ser eliminado correctamente
