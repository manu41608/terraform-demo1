module "my-vm" {
  source        = "./modules/tfe-demo"
  vmname        = "demovm3"
  rgname        = "dummyrgg"
  vnetname      = "myvnet"
  address_space = ["10.0.0.0/16"]
  subnetname    = "mysubnetname"
  address_prefix = ["10.0.0.0/24"]
  nicname       = "mycard"

}


