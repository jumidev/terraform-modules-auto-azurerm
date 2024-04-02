

resource "azurerm_federated_identity_credential" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  audience            = var.audience
  issuer              = var.issuer
  parent_id           = var.parent_id
  subject             = var.subject
}
