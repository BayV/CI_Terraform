terraform {
    required_providers{
        docker = {
            source="kreuzwerker/docker"
            version=">=2.13.0"
            }
        }
    }

provider "docker" {
    host = "npipe:////.//pipe//docker_engine"
}

resource "docker_image" "python-fastapi-build" {
  name = "python-fastapi"
  build {
    path = "..\\Docker\\FastAPI"
    dockerfile = "Dockerfile"
    tag  = ["python-fastapi:latest"]
  }
  keep_locally = true
}

resource "docker_container" "python-fastapi" {
    image = docker_image.python-fastapi-build.latest
    name  = "webapp_terraform"
    ports {
        internal = 8000
        external = 8000
    }
}