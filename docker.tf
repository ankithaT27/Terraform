terraform{
  required_providers{
    docker={
      source=
        version=

        }
  }

  provider "docker" {
  }

  resource "docker_image" "nginx"{
    name="nginx:latest
      keep_locally="false"
  }


  resource "docker_container" "nginx_container"{
    name="nginx_container"
      image=docker_image.nginx.name
     ports{
        internal_Port=80
        external_port=80
  }
