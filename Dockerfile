FROM ubuntu:20.04

# Set timezone
ENV TZ=US/Eastern
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone
    
# Install Apt packages for Python
RUN apt-get update
RUN apt-get install -y python3.8 python3-pip python3-dev

# Install Python modules
RUN python3 -m pip install --upgrade pip==20.1.1
RUN python3 -m pip install pandas==1.0.5 \
    dash==1.13.3 \
    gunicorn==20.0.4

# Add app file to root directory
ADD app/app.py /

# Expose port 8080
EXPOSE 8080