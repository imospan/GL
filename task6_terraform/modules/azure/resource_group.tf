resource "azurerm_resource_group" "az_rg" {
  name     = "Grafana_resource_group"
  location = var.location
}