SELECT
  s.fullname AS student_name,
  g.name AS group_name,
  sb.name AS subject_name,
  gr.grade,
  gr.grade_date
FROM
  grades gr
JOIN
  students s ON gr.student_id = s.id
JOIN
  groups g ON s.group_id = g.id
JOIN
  subjects sb ON gr.subject_id = sb.id
WHERE
  g.name = 'rate' -- Назва певної групи
  AND sb.name = 'game'; -- Назва певного предмета
