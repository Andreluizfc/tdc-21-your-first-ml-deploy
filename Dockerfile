FROM python:3.7

# This prevents Python from writing out pyc files
ENV PYTHONDONTWRITEBYTECODE 1

# Copy files and Install
COPY ./requirements.txt requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

COPY ./app /app
WORKDIR /app
EXPOSE 8080

COPY . .

CMD ["gunicorn", "-b", "0.0.0.0:8080", "web_server"]