Feature: AnswerTest
  Scenario: Ver todas mis respuestas
    Given que soy un usuario
    When solicito ver todas mis respuestas
    Then debería ver una lista con todas mis respuestas anteriores

  Scenario: Ver mis respuestas por ID de ejercicio
    Given que tengo el ID de un ejercicio
    When solicito ver mis respuestas para ese ejercicio
    Then debería ver una lista con mis respuestas relacionadas a ese ejercicio

  Scenario: Agregar una nueva respuesta
    Given que quiero agregar una nueva respuesta
    When ingreso los detalles de mi nueva respuesta
    And envío la respuesta
    Then mi respuesta debería guardarse correctamente

  Scenario: Intentar agregar una nueva respuesta con datos inválidos
    Given que quiero agregar una nueva respuesta
    And los datos ingresados son inválidos
    When intento enviar la respuesta
    Then debería recibir un mensaje de error de validación

  Scenario: Actualizar una respuesta existente
    Given que quiero actualizar una respuesta existente
    And tengo el ID de la respuesta que quiero actualizar
    When ingreso los detalles actualizados de la respuesta
    And envío la actualización
    Then la respuesta debería actualizarse correctamente

  Scenario: Eliminar una respuesta existente
    Given que quiero eliminar una respuesta existente
    And tengo el ID de la respuesta que quiero eliminar
    When solicito eliminar la respuesta
    Then la respuesta debería eliminarse correctamente
