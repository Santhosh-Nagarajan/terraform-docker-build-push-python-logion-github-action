provider "docker" {
  host = "unix:///var/run/docker.sock"
}

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.1"
    }
  }
}


module "example" {
  source = "./modules/register"

}

