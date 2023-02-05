FROM selenium/hub

# Add the script to be run
COPY sample.py /app/sample.py


# Run the script
CMD ["python3", "/app/sample.py"]
