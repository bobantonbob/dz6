-- Запит 3: Знайти середній бал, який певний викладач ставить певному студентові
SELECT
  t.fullname AS teacher_name,
  s.fullname AS student_name,
  AVG(gr.grade) AS average_grade
FROM
  teachers t
JOIN
  subjects sb ON t.id = sb.teacher_id
JOIN
  grades gr ON sb.id = gr.subject_id
JOIN
  students s ON gr.student_id = s.id
WHERE
  t.fullname = 'Matthew Rodriguez' and  -- ПІБ певного викладача
  s.fullname = 'Darrell Hodge'  -- ПІБ певного студента
GROUP BY
  t.fullname, s.fullname;
