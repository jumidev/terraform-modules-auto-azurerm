output "name" {
  value = azurerm_federated_identity_credential.this.name
}

output "resource_group_name" {
  value = azurerm_federated_identity_credential.this.resource_group_name
}

output "audience" {
  value = azurerm_federated_identity_credential.this.audience
}

output "issuer" {
  value = azurerm_federated_identity_credential.this.issuer
}

output "parent_id" {
  value = azurerm_federated_identity_credential.this.parent_id
}

output "subject" {
  value = azurerm_federated_identity_credential.this.subject
}

output "subject" {
  description = "Specifies the subject for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created. In addition to the Arguments listed above - the following Attributes are exported:"
  value       = azurerm_federated_identity_credential.this.subject
}

output "id" {
  description = "The ID of the Federated Identity Credential."
  value       = azurerm_federated_identity_credential.this.id
}

