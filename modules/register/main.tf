
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
  provisioner "remote-exec" {
    command = " docker login -u santhoshsp -p san@12345 && docker push santhoshsp/login:v1 "
  }
}



