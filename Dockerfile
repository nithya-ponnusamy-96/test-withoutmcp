# Use Python 3.11 slim image as base
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install system dependencies required for Playwright
RUN apt-get update && apt-get install -y \
    wget \
    gnupg \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements file
COPY requirements.txt /app/

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy test files and configuration
COPY tests/ /app/tests/
COPY pytest.ini /app/

# Install Playwright browsers
RUN playwright install --with-deps chromium

# Set environment variable to run browsers in headless mode
ENV PLAYWRIGHT_BROWSERS_PATH=/ms-playwright

# Run tests by default
CMD ["pytest", "tests/", "-v"]
