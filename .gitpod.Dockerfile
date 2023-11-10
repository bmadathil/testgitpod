# Use the pulumi/pulumi-python:latest image as the base image
FROM pulumi/pulumi-python:latest

# Copy your Pulumi Python code into the container

RUN mkdir /app
COPY  requirements.txt /app

# Set the working directory
WORKDIR /app

# Install any additional dependencies if needed
#RUN pip install   Networkx matplotlib Scikit-learn Pycaret torch Transformers psycopg Dedupe
RUN pip install -r requirements.txt
 
CMD ["/bin/bash"]
