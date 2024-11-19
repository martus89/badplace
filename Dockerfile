#FROM ubuntu:latest
#LABEL authors="martaciesla"
#
#ENTRYPOINT ["top", "-b"]

FROM python:3.12

WORKDIR .

COPY requirements.txt ./requirements.txt

RUN pip install --no-cache-dir -r ./requirements.txt

COPY . .

EXPOSE 8000

#CMD ["python", "dosage/manage.py", "runserver", "0.0.0.0:8000"]
