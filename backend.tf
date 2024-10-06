terraform {
  backend "azurerm" {
    resource_group_name  = "DefaultResourceGroup-EUS" # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "demostorage0001458"       # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "demo"                     # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "module.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
