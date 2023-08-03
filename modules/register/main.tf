
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
    command = "docker push santhoshsp/login:v1"
  }
}



