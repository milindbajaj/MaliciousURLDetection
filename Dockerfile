FROM continuumio/anaconda3:4.4.0

WORKDIR /app
ADD . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose port
EXPOSE 5001

# Run the application:
CMD ["python", "app.py"]