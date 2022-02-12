terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = ">2.46.1"
        }
    }
}
# configure the Microsoft Azure Provider
proider "azurerm" {
    features{}
}
terraform {
    backend "azurerm" {
        resource_group_name  = "RG-GC-AZR-TF"
        storage_account_name = "gencloudazuretf2021"
        container_name       = "terraform-state"
        key                  = "terraform.tfstate" 
    }
}