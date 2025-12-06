/*# Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia

SELECT 
    `departments`.`name` AS `department_name`,
    `departments`.`address` AS `department_address`,
    `departments`.`phone` AS `department_phone`,
    `departments`.`head_of_department`,
    `degrees`.`name` AS `degree_name`,
    `students`.`name` AS `student_name`,
    `students`.`surname` AS `student_surname`,
    `students`.`enrolment_date`
FROM `departments`
JOIN `degrees` 
    ON `degrees`.`department_id` = `departments`.`id`
JOIN `students`
    ON `students`.`degree_id` = `degrees`.`id`
WHERE 
    `degrees`.`name` = "Corso di Laurea in Diritto dell'Economia"
ORDER BY 
    `students`.`surname`, 
    `students`.`name`;

*/