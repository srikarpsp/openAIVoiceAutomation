FROM python:3
COPY requirements.txt /app/
RUN apt-get update && apt-get install -y portaudio19-dev
RUN pip install --no-cache-dir -r /app/requirements.txt
COPY singleAPI.py /app/
WORKDIR /app
CMD ["python", "singleAPI.py"]
