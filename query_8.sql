SELECT
  t.fullname AS teacher_name,
  AVG(gr.grade) AS average_grade
FROM
  teachers t
JOIN
  subjects s ON t.id = s.teacher_id
JOIN
  grades gr ON s.id = gr.subject_id
WHERE
  t.fullname = 'Nicolas Delacruz' -- ПІБ певного викладача
GROUP BY
  t.fullname;
