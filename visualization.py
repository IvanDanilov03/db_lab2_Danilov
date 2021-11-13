import psycopg2
import matplotlib.pyplot as plt

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

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)

with conn:
    cur = conn.cursor()

    cur.execute(query_1)
    data_to_visualise = {}

    for row in cur:
      data_to_visualise[row[0]] = row[1]

    x_range = range(len(data_to_visualise.keys()))
 
    figure, bar_ax = plt.subplots()
    bar = bar_ax.bar(x_range, data_to_visualise.values(), label='Total')
    bar_ax.set_title('Кількість коміксів кожного формату')
    bar_ax.set_xlabel('Формат')
    bar_ax.set_ylabel('Кількість коміксів')
    bar_ax.set_xticks(x_range)
    bar_ax.set_xticklabels(data_to_visualise.keys())


    cur.execute(query_2)
    data_to_visualise = {}

    for row in cur:
      data_to_visualise[row[0]] = row[1]

    figure, pie_ax = plt.subplots()
    pie_ax.pie(data_to_visualise.values(), labels=data_to_visualise.keys(), autopct='%1.1f%%')
    pie_ax.set_title('Кількість коміксів виданих в певних датах')


    cur.execute(query_3)
    data_to_visualise = {}

    for row in cur:
      data_to_visualise[row[0]] = row[1]

    x_range = range(len(data_to_visualise.keys()))
 
    figure, bar_ax = plt.subplots()
    bar = bar_ax.bar(x_range, data_to_visualise.values(), label='Total')
    bar_ax.set_title('кількість авторів написавших у форматі "Digest"')
    bar_ax.set_xlabel("ім'я автора")
    bar_ax.set_ylabel('кількість')
    bar_ax.set_xticks(x_range)
    bar_ax.set_xticklabels(data_to_visualise.keys())


mng = plt.get_current_fig_manager()
mng.resize(1000, 500)

plt.show()