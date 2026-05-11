# Use lightweight Python image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Install Linux dependencies for NetCDF
RUN apt-get update && apt-get install -y \
    libnetcdf-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Python packages
RUN pip install xarray netCDF4 matplotlib

# Copy project files into container
COPY analyze_data.py .
COPY process.sh .

# Copy dataset folder
COPY data ./data

# Create output folders
RUN mkdir -p results logs

# Make bash script executable
RUN chmod +x process.sh

# Start pipeline automatically
CMD ["./process.sh"]