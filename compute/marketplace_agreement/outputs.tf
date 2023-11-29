output "offer" {
  value = azurerm_marketplace_agreement.this.offer
}

output "plan" {
  value = azurerm_marketplace_agreement.this.plan
}

output "publisher" {
  value = azurerm_marketplace_agreement.this.publisher
}

output "id" {
  description = "The ID of the Marketplace Agreement."
  value       = azurerm_marketplace_agreement.this.id
}

