

resource "azurerm_mobile_network_sim" "this" {

  ########################################
  # required vars
  ########################################
  name                                     = var.name
  mobile_network_sim_group_id              = var.mobile_network_sim_group_id
  authentication_key                       = var.authentication_key
  international_mobile_subscriber_identity = var.international_mobile_subscriber_identity
  integrated_circuit_card_identifier       = var.integrated_circuit_card_identifier
  operator_key_code                        = var.operator_key_code

  ########################################
  # optional vars
  ########################################
  device_type   = var.device_type
  sim_policy_id = var.sim_policy_id

  dynamic "static_ip_configuration" { # var.static_ip_configuration
    for_each = var.static_ip_configuration != null ? var.static_ip_configuration : []
    content {
      attached_data_network_id = lookup(static_ip_configuration.value, "attached_data_network_id") # (Required) 
      slice_id                 = lookup(static_ip_configuration.value, "slice_id")                 # (Required) 
      static_ipv4_address      = lookup(static_ip_configuration.value, "static_ipv4_address", null)
    }
  }

}
