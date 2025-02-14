# Use an official Python image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the application files
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables (Optional: You can also use a .env file)
ENV PYTHONUNBUFFERED=1

# Run the bot script
CMD ["python", "ai_twitter_bot.py"]
