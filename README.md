# Django App Dockerization

This repository contains a Django application `say_current_time` that is containerized using Docker. Follow the instructions below to clone the repository, navigate to the project directory, and run the project using Docker Compose.

## Prerequisites

Ensure you have the following installed on your system:
- Docker
- Docker Compose
- PostgreSQL (running in the same network `testnetwork`)

## Clone the Repository

Clone the repository to your local machine using the following command:

```sh
git clone <repository-url>
```

Replace `<repository-url>` with the actual URL of your GitHub repository.

## Navigate to the Project Directory

Change your directory to the cloned repository:

```sh
cd django-app-dockerisation
```

## Project Structure

The project directory contains the following structure:

```
django-app-dockerisation/
│
├── saycurrenttime/
│   ├── __init__.py
│   ├── asgi.py
│   ├── settings.py
│   ├── urls.py
│   ├── wsgi.py
│
├── Dockerfile
├── docker-compose.yaml
├── manage.py
├── README.md
├── requirements.txt
├── start.sh
└── .env
```

## Environment Variables

The environment variables required for the database configuration are stored in the `.env` file. Ensure your `.env` file contains the following variables:

```
db_engine=django.db.backends.postgresql
db_host=<your_db_host>
db_port=<your_db_port>
db_user=<your_db_user>
db_pass=<your_db_pass>
db_name=<your_db_name>
```

Replace `<your_db_host>`, `<your_db_port>`, `<your_db_user>`, `<your_db_pass>`, and `<your_db_name>` with the actual values for your PostgreSQL database.

## Build and Run the Project

Use Docker Compose to build and run the project:

```sh
docker-compose up -d --build
```

This command will build the Docker image and start the containers in detached mode.

## Access the Application

The application will be accessible at `http://localhost:8000`.

## Stopping the Application

To stop the application, use the following command:

```sh
docker-compose down
```

This will stop and remove the containers created by Docker Compose.
