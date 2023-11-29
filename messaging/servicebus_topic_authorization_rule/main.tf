

resource "azurerm_servicebus_topic_authorization_rule" "this" {

  ########################################
  # required vars
  ########################################
  name     = var.name
  topic_id = var.topic_id

  ########################################
  # optional vars
  ########################################
  listen = var.listen # Default: False
  send   = var.send   # Default: False
  manage = var.manage # Default: False
}
