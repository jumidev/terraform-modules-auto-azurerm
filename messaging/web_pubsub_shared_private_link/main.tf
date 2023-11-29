

resource "azurerm_web_pubsub_shared_private_link" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  web_pubsub_id      = var.web_pubsub_id
  subresource_name   = var.subresource_name
  target_resource_id = var.target_resource_id

  ########################################
  # optional vars
  ########################################
  request_message = var.request_message
}
