output "name" {
  value = azurerm_mobile_network_sim.this.name
}

output "mobile_network_sim_group_id" {
  value = azurerm_mobile_network_sim.this.mobile_network_sim_group_id
}

output "authentication_key" {
  value = azurerm_mobile_network_sim.this.authentication_key
}

output "international_mobile_subscriber_identity" {
  value = azurerm_mobile_network_sim.this.international_mobile_subscriber_identity
}

output "integrated_circuit_card_identifier" {
  value = azurerm_mobile_network_sim.this.integrated_circuit_card_identifier
}

output "operator_key_code" {
  value = azurerm_mobile_network_sim.this.operator_key_code
}

output "device_type" {
  value = azurerm_mobile_network_sim.this.device_type
}

output "sim_policy_id" {
  value = azurerm_mobile_network_sim.this.sim_policy_id
}

output "static_ip_configuration" {
  value = azurerm_mobile_network_sim.this.static_ip_configuration
}

output "id" {
  description = "The ID of the Mobile Network Sim."
  value       = azurerm_mobile_network_sim.this.id
}

output "sim_state" {
  description = "The state of the SIM resource."
  value       = azurerm_mobile_network_sim.this.sim_state
}

output "vendor_key_fingerprint" {
  description = "The public key fingerprint of the SIM vendor who provided this SIM, if any."
  value       = azurerm_mobile_network_sim.this.vendor_key_fingerprint
}

output "vendor_name" {
  description = "The name of the SIM vendor who provided this SIM, if any."
  value       = azurerm_mobile_network_sim.this.vendor_name
}

