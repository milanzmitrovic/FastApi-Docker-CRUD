from sqlalchemy import Table, Column, Integer, String, Numeric, MetaData

metadata = MetaData()

students = Table('students', metadata,
                 Column('student_id', Integer(), primary_key=True),
                 Column('name', String(50)),
                 Column('surname', String(50)),
                 Column('age', Numeric(12, 2))
                 )




