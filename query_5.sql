SELECT
  t.fullname AS teacher_name,
  s.name AS subject_name
FROM
  teachers t
JOIN
  subjects s ON t.id = s.teacher_id
WHERE
  t.fullname = 'Matthew Rodriguez';  -- ПІБ певного викладача
