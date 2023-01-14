variable "ami" {
  description = "aws image version"
  type        = string
  default     = "ami-06878d265978313ca"
}

variable "tags" {
  type = map(string)
  default = {
    "Terraform" = "True"
    "Owner"     = "mosya"
  }
}

variable "grafana" {
  description = "script to install grafana"
  default     = "grafana.sh"
}

variable "ssh_pub_key" {
    default = "your_ssh/id_rsa.pub"
}

variable "key_name" {
    default = "id_rsa"
}
