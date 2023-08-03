
resource "docker_image" "zoo" {
  name = "web"
  build {
    context = "."
    tag     = var.tag
    label = {
      author : "santhosh"
    }
  }
}


resource "null_resource" "demo" {
  provisioner "local-exec" {
    command = " docker login -u ${var.username} -p ${var.password} && docker push ${var.tag} "
  }
}



