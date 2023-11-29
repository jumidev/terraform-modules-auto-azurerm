

resource "azurerm_data_factory_linked_service_sftp" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  data_factory_id     = var.data_factory_id
  authentication_type = var.authentication_type
  host                = var.host
  port                = var.port
  username            = var.username
  password            = var.password

  ########################################
  # optional vars
  ########################################
  description              = var.description
  integration_runtime_name = var.integration_runtime_name
  annotations              = var.annotations
  parameters               = var.parameters
  additional_properties    = var.additional_properties
  host_key_fingerprint     = var.host_key_fingerprint
  skip_host_key_validation = var.skip_host_key_validation
}
