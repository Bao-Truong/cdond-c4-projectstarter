FROM python:3.7.3-stretch

## Step 1:
WORKDIR /app
# Create a working directory

## Step 2:
COPY . .
# Copy source code to working directory

## Step 3:
RUN python3 -m pip install --upgrade pip && python3 -m pip install -r requirements.txt
# RUN hadolint --ignore DL3013 --ignore DL3042
# Install packages from requirements.txt
# hadolint ignore=DL3013

## Step 4:
EXPOSE 80
# Expose port 80

## Step 5:
ENTRYPOINT ["python3", "app.py"]
# Run app.py at container launch

