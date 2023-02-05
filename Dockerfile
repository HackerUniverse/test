FROM selenium/hub

# Add the script to be run
COPY sample.py /app/sample.py

# Install required packages for the script
RUN apt-get update && apt-get install -y python3

# Run the script
CMD ["python3", "/app/sample.py"]
