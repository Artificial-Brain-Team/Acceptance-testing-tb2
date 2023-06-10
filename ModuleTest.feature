Feature: ModuleTest

  Scenario: Obtener todos los módulos
    Given una lista de módulos
    When solicito obtener todos los módulos
    Then debería recibir una lista de respuestas de módulos

  Scenario: Obtener un módulo por ID
    Given un ID de módulo
    When solicito obtener el módulo con ese ID
    Then debería recibir una respuesta de módulo

  Scenario: Crear un módulo válido 
    Given una solicitud de módulo válida
    When creo un nuevo módulo con esa solicitud
    Then debería llamar a la función de guardar

  Scenario: Crear un módulo inválido
    Given una solicitud de módulo inválida
    When intento crear un nuevo módulo con esa solicitud
    Then no debería llamar a la función de guardar
    And debería recibir el código de estado 400

  Scenario: Actualizar un módulo válido
    Given un ID de módulo válido y una solicitud de módulo válida
    When actualizo el módulo con ese ID utilizando la solicitud
    Then debería llamar a la función de actualizar con el ID y el módulo

  Scenario: Eliminar un módulo válido
    Given un ID de módulo válido
    When solicito eliminar el módulo con ese ID
    Then debería llamar a la función de eliminar con el ID
