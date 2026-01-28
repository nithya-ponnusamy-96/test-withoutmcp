# Test Project

This project contains automated tests using pytest and Playwright, with Docker support for easy execution.

## Setup

1. Install dependencies:
```bash
pip install -r requirements.txt
```

2. Install Playwright browsers:
```bash
playwright install chromium
```

## Run Tests

Run all tests:
```bash
pytest
```

Run with verbose output:
```bash
pytest -v
```

Run specific test file:
```bash
pytest tests/sample.py
```

## Docker

Build and run tests in Docker:
```bash
docker build -t test-runner .
docker run test-runner
```
