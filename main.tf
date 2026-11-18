module "ec2-sg" {
  source =  "./network"
}

module "ec2" {
    source = "./ec2"
    component = var.component
    ami = var.ami
    sg_id = module.network.sg_id
}

module ansible {
    depends_on = [
        ec2
    ]
    source = "./ansible"
    component = var.component
    public_ip = module.ec2.public_ip
}