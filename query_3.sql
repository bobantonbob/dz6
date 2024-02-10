SELECT
  g.name AS group_name,
  s.name AS subject_name,
  AVG(grade) AS average_grade
FROM
  grades gr
JOIN
  students st ON gr.student_id = st.id
JOIN
  groups g ON st.group_id = g.id
JOIN
  subjects s ON gr.subject_id = s.id
WHERE
  s.name = 'game' --'Назва певного предмета'
GROUP BY
  g.name, s.name;
