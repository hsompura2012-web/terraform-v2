resource "aws_security_group" "Roboshop_sg" {
  name        = "Roboshop_sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-035045af65d166f3e"

  tags = {
    Name = "Roboshop_sg"
  }
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.Roboshop_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
  security_group_id = aws_security_group.Roboshop_sg.id
  cidr_ipv6         = "::/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
