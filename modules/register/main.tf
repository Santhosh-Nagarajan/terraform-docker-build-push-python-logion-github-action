
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
    command = "docker login -u santhoshsp -p san@12345"
  }
}



