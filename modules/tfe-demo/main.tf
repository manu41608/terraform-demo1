# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "${var.rgname}-rg"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "example" {
  name                = "${var.vnetname}-network"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  address_space       = var.address_space
}
resource "azurerm_subnet" "example" {
  name                 = var.subnetname
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = var.address_prefix
}

resource "azurerm_network_interface" "example" {
  name                = "${var.nicname}-nic"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }
}

#resource "azurerm_linux_virtual_machine" "example" {
 # name                            = var.vmname
 # resource_group_name             = azurerm_resource_group.example.name
 # location                        = var.location
 # size                            = "Standard_B1s"
 # admin_username                  = "adminuser"
 # disable_password_authentication = false
 # network_interface_ids = [
  #  azurerm_network_interface.example.id,
 # ]

 # admin_password = "Azureuser@12345"

 # os_disk {
  #  caching              = "ReadWrite"
  #  storage_account_type = "Standard_LRS"
 # }

 # source_image_reference {
  #  publisher = "Canonical"
  #  offer     = "0001-com-ubuntu-server-jammy"
  #  sku       = "22_04-lts"
  #  version   = "latest"
 # }
#}
