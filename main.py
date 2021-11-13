import psycopg2

username = 'postgres'
password = 'postgres'
database = 'lab2_database'
host = 'localhost'
port = '5432'


query_1 = '''
SELECT format.format_name, count(format.format_name) 
FROM Comics 
INNER JOIN Format ON Comics.format_id = Format.format_id
GROUP BY format.format_name
'''

query_2 = '''
SELECT publish.publish_data, count(publish.publish_data) 
FROM Comics 
INNER JOIN publish ON Comics.publish_id = publish.publish_id
GROUP BY publish.publish_data
'''

query_3 = '''
SELECT writer_name, COUNT(comics_name)
FROM Comics
INNER JOIN Writer ON Comics.writer_id = Writer.writer_id
JOIN Format ON Comics.format_id = Format.format_id
where format_name in ('Digest')
GROUP BY writer_name
ORDER BY COUNT(comics_name)
'''

con = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)


with con:

    cur = con.cursor()

    print('query №1:\n')
    cur.execute(query_1)
    for row in cur:
      print(row)

    print('\n\nquery №2:\n')
    cur.execute(query_2)
    for row in cur:
      print(row)

    print('\n\nquery №3:\n')
    cur.execute(query_3)
    for row in cur:
      print(row)
