data "azurerm_role_definition" "this" {
  name               = var.role_definition_name
  role_definition_id = var.role_definition_role_definition_id
  scope              = var.role_definition_scope
}


resource "azurerm_role_assignment" "this" {

  ########################################
  # required vars
  ########################################
  scope        = var.scope
  principal_id = var.principal_id

  ########################################
  # optional vars
  ########################################
  name                                   = var.name
  role_definition_id                     = var.role_definition_id
  role_definition_name                   = data.azurerm_role_definition.this.name
  condition                              = var.condition
  condition_version                      = var.condition_version
  delegated_managed_identity_resource_id = var.delegated_managed_identity_resource_id
  description                            = var.description
  skip_service_principal_aad_check       = var.skip_service_principal_aad_check # Default: False
}
