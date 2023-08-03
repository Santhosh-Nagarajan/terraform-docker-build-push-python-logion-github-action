
resource "docker_image" "zoo" {
  name = "web"
  build {
    context = "."
    tag     = ["docker.io/santhoshsp/login:v1"]
    label = {
      author : "santhosh"
    }
  }
}


resource "null_resource" "demo" {
  provisioner "local-exec" {
    command = " sudo docker login -u santhoshsp -p san@12345 && docker push docker.io/santhoshsp/login:v1"
  }
}



