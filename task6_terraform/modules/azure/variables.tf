variable "user_data" {
  default = "grafana.sh"
}

variable "location" {
  default = "East US"
}

variable "network_ip_address" {
  default = ["10.0.0.0/16"]
}

variable "subnet_ip" {
  default = ["10.0.10.0/24"]
}

variable "size" {
  default = "Standard_B1s"
}

variable "ssh_pub_key" {
  default = "your_ssh/id_rsa.pub"
}

