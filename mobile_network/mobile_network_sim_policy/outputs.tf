output "name" {
  value = azurerm_mobile_network_sim_policy.this.name
}

output "mobile_network_id" {
  value = azurerm_mobile_network_sim_policy.this.mobile_network_id
}

output "default_slice_id" {
  value = azurerm_mobile_network_sim_policy.this.default_slice_id
}

output "location" {
  value = azurerm_mobile_network_sim_policy.this.location
}

output "registration_timer_in_seconds" {
  value = azurerm_mobile_network_sim_policy.this.registration_timer_in_seconds
}

output "rat_frequency_selection_priority_index" {
  value = azurerm_mobile_network_sim_policy.this.rat_frequency_selection_priority_index
}

output "user_equipment_aggregate_maximum_bit_rate" {
  value = azurerm_mobile_network_sim_policy.this.user_equipment_aggregate_maximum_bit_rate
}

output "slice" {
  value = azurerm_mobile_network_sim_policy.this.slice
}

output "tags" {
  value = azurerm_mobile_network_sim_policy.this.tags
}

output "id" {
  description = "The ID of the Mobile Network Sim Policies."
  value       = azurerm_mobile_network_sim_policy.this.id
}

