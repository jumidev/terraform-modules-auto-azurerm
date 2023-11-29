output "name" {
  value = azurerm_dev_test_policy.this.name
}

output "policy_set_name" {
  value = azurerm_dev_test_policy.this.policy_set_name
}

output "lab_name" {
  value = azurerm_dev_test_policy.this.lab_name
}

output "resource_group_name" {
  value = azurerm_dev_test_policy.this.resource_group_name
}

output "description" {
  value = azurerm_dev_test_policy.this.description
}

output "evaluator_type" {
  value = azurerm_dev_test_policy.this.evaluator_type
}

output "threshold" {
  value = azurerm_dev_test_policy.this.threshold
}

output "fact_data" {
  value = azurerm_dev_test_policy.this.fact_data
}

output "tags" {
  value = azurerm_dev_test_policy.this.tags
}

output "id" {
  description = "The ID of the Dev Test Policy."
  value       = azurerm_dev_test_policy.this.id
}

