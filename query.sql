-- query 1 --
SELECT format.format_name, count(format.format_name) 
FROM Comics 
INNER JOIN Format ON Comics.format_id = Format.format_id
GROUP BY format.format_name

-- query 2 --
SELECT publish.publish_data, count(publish.publish_data) 
FROM Comics 
INNER JOIN publish ON Comics.publish_id = publish.publish_id
GROUP BY publish.publish_data

-- query 3 --
SELECT writer_name, COUNT(comics_name)
FROM Comics
INNER JOIN Writer ON Comics.writer_id = Writer.writer_id
JOIN Format ON Comics.format_id = Format.format_id
where format_name in ('Digest')
GROUP BY writer_name
ORDER BY COUNT(comics_name)

