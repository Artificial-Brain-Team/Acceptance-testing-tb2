Feature: CityTest
Scenario: Obtener todas las ciudades
    Given que la infraestructura de la ciudad devuelve una lista de ciudades
    When un usuario solicita obtener todas las ciudades
    Then debo recibir una lista de ciudades

Scenario: Obtener ciudad por ID
    Given que la infraestructura de la ciudad devuelve una ciudad con un ID válido
    When un usuario solicita obtener una ciudad por ID
    Then debo recibir la ciudad con el ID especificado

Scenario: Crear una ciudad con datos válidos
    Given una solicitud de ciudad válida
    When un usuario solicita crear una ciudad
    Then la nueva ciudad debe ser guardado correctamente

Scenario: Crear una ciudad con datos no válidos
    Given una solicitud de ciudad no válida
    When un usuario solicita crear una ciudad
    Then debo recibir un código de estado 400 (Solicitud incorrecta)

Scenario: Actualizar una ciudad con datos válidos
    Given una solicitud de ciudad válida y un ID de ciudad existente
    When un usuario solicita actualizar una ciudad
    Then la ciudad con el ID especificado debe ser actualizado correctamente

Scenario: Eliminar una ciudad
    Given un ID de ciudad existente
    When un usuario solicita eliminar una ciudad
    Then la ciudad con el ID especificado debe ser eliminado correctamente
