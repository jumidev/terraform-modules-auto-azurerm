

resource "azurerm_data_factory_integration_runtime_azure" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  data_factory_id = var.data_factory_id
  location        = var.location

  ########################################
  # optional vars
  ########################################
  description             = var.description
  cleanup_enabled         = var.cleanup_enabled  # Default: True
  compute_type            = var.compute_type     # Default: General
  core_count              = var.core_count       # Default: 8
  time_to_live_min        = var.time_to_live_min # Default: 0
  virtual_network_enabled = var.virtual_network_enabled
}
