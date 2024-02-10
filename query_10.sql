SELECT DISTINCT
  s.fullname AS student_name,
  g.name AS group_name,
  sb.name AS subject_name,
  t.fullname AS teacher_name
FROM
  students s
JOIN
  groups g ON s.group_id = g.id
JOIN
  grades gr ON s.id = gr.student_id
JOIN
  subjects sb ON gr.subject_id = sb.id
JOIN
  teachers t ON sb.teacher_id = t.id
WHERE
  s.fullname = 'Mr. James Reynolds' and  -- ПІБ певного студента
  t.fullname = 'Matthew Rodriguez';   -- ПІБ певного викладача
