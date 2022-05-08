terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "syer-terraform"
  location = "northeurope"
  tags = {
    WBS        = "C.TDI.IT.00010"
    Subproject = "infra"
    Project    = "internal"
  }
}