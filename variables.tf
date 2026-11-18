variable "ami" {
    default = "ami-0055977a6e828a4f4"
}

variable "component"{
    default = {
     frontend=""
     mongodb=""
     catalogue=""
     redis=""
    # user=""
    # cart=""
    # mysql=""
    # shipping=""
    # rabbitmq=""
    # payment=""
    # dispatch=""        
    }
}