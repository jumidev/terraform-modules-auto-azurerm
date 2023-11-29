

resource "azurerm_data_factory_linked_service_cosmosdb_mongoapi" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  data_factory_id = var.data_factory_id

  ########################################
  # optional vars
  ########################################
  description                    = var.description
  integration_runtime_name       = var.integration_runtime_name
  annotations                    = var.annotations
  parameters                     = var.parameters
  additional_properties          = var.additional_properties
  database                       = var.database
  connection_string              = var.connection_string
  server_version_is_32_or_higher = var.server_version_is_32_or_higher # Default: False
}
