SELECT DISTINCT
  s.fullname AS student_name,
  g.name AS group_name,
  sb.name AS subject_name
FROM
  students s
JOIN
  groups g ON s.group_id = g.id
JOIN
  grades gr ON s.id = gr.student_id
JOIN
  subjects sb ON gr.subject_id = sb.id
WHERE
  s.fullname = 'Mr. James Reynolds'; -- ПІБ певного студента


