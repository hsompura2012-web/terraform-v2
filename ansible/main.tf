resource "null_resource" "ansible" {
  
  for_each = var.component
  provisioner "remote-exec" {
  
  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = var.public_ip[each.key]
  }

  inline = [
    "sudo dnf install python3.13-pip -y",
    "pip3.13 install ansible",
    "ansible-pull -U https://github.com/hsompura2012-web/Ansible_v3.git -i localhost, main.yaml -e component=${each.key}"
  ]
}

}
