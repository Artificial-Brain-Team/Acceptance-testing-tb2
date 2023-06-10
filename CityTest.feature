Feature: CityTest
Scenario: Obtener todas las ciudades
    Given que la infraestructura de la ciudad devuelve una lista de ciudades
    When un usuario solicita obtener todas las ciudades
    Then la API debe devolver una lista de respuestas de ciudades

Scenario: Obtener ciudad por ID
    Given que la infraestructura de la ciudad devuelve una ciudad con un ID válido
    When un usuario solicita obtener una ciudad por ID
    Then la API debe devolver la respuesta de la ciudad correspondiente

Scenario: Crear una ciudad con datos válidos
    Given una solicitud de ciudad válida
    When un usuario solicita crear una ciudad
    Then la API debe guardar la ciudad y devolver un código de estado 200

Scenario: Crear una ciudad con datos no válidos
    Given una solicitud de ciudad no válida
    When un usuario solicita crear una ciudad
    Then la API debe devolver un código de estado 400

Scenario: Actualizar una ciudad con datos válidos
    Given una solicitud de ciudad válida y un ID de ciudad existente
    When un usuario solicita actualizar una ciudad
    Then la API debe actualizar la ciudad con los datos proporcionados

Scenario: Eliminar una ciudad
    Given un ID de ciudad existente
    When un usuario solicita eliminar una ciudad
    Then la API debe eliminar la ciudad
