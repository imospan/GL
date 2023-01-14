output "azure_public_ip" {
    value = azurerm_public_ip.azure_public_ip.ip_address
}