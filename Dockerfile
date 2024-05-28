# Use the official Python image from the Docker Hub
FROM python:3.10

# Set the working directory
WORKDIR /code

# Copy the requirements file into the container
COPY requirements.txt /code/

# Install any dependencies
RUN pip install -r requirements.txt

# Copy the current directory contents into the container at /code
COPY . /code/

# Make port 8000 available to the world outside this container
EXPOSE 8000

# Define the command to run the application
CMD ["python", "blog_project/manage.py", "runserver", "0.0.0.0:8000"]
