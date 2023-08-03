
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
    command = "echo san@12345 | sudo docker login -u santhoshsp --password-stdin && docker push docker.io/santhoshsp/login:v1"
  }
}



