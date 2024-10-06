variable "vmname" {

  type = string
}

variable "location" {
  default = "West Europe"
}

variable "rgname" {
  type = string
}

variable "vnetname" {


}

variable "address_space" {

 default = ["10.0.0.4/16"]
}

variable "address_prefix" {

}

variable "subnetname" {

}

variable "nicname" {

 type = string
}
