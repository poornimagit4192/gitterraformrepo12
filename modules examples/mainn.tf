terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "latest"
    } 
  }
  backend "azurerm" {
    resource_group_name = "tfstate111"
    storage_account_name = "tfstatestore20111"
    container_name = "tfstate"
    key = "terraformtfstate111"  
  }
}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "resourcegroup" {
  location = var.location
  name     = var.rsgname
}
