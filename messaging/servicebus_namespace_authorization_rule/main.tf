

resource "azurerm_servicebus_namespace_authorization_rule" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  namespace_id = var.namespace_id

  ########################################
  # optional vars
  ########################################
  listen = var.listen # Default: False
  send   = var.send   # Default: False
  manage = var.manage # Default: False
}
