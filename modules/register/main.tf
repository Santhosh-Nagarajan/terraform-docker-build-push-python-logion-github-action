
resource "docker_image" "zoo" {
  name = "web"
  build {
    context = "."
    tag     = ["santhoshsp/login:v1"]
    label = {
      author : "santhosh"
    }
  }
}


resource "null_resource" "demo" {
  provisioner "local-exec" {
    command = "sudo docker login --username santhoshsp --password san@12345 && docker push santhoshsp/login:v1"
  }
}



