

resource "azurerm_servicebus_queue_authorization_rule" "this" {

  ########################################
  # required vars
  ########################################
  name     = var.name
  queue_id = var.queue_id

  ########################################
  # optional vars
  ########################################
  listen = var.listen # Default: False
  send   = var.send   # Default: False
  manage = var.manage # Default: False
}
