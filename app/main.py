
from fastapi import FastAPI
from app.api.models import Student
import uvicorn

from app.crud.db_models import metadata
from app.crud.db_models import students

from sqlalchemy import insert, select

from app.crud.db_conn import engine


app = FastAPI()


@app.post("/add_new_student/")
def create_student(student: Student):
    print(student.name)
    print(student.surname)
    print(student.age)

    ins = insert(students).values(
        name=student.name,
        surname=student.surname,
        age=student.age
    )

    with engine.connect() as conn:
        conn.execute(ins)


@app.get("/get_all_student/")
def get_student():
    print('get method!')

    s = select([students])

    with engine.connect() as conn:
        rp = conn.execute(s)
        results = rp.fetchall()
        print(results)

    return results


metadata.create_all(engine)

# if __name__ == '__main__':
#
#     metadata.create_all(engine)
#
#     uvicorn.run(app=app)
#

