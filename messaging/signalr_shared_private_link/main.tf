

resource "azurerm_signalr_shared_private_link" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  signalr_service_id = var.signalr_service_id
  sub_resource_name  = var.sub_resource_name
  target_resource_id = var.target_resource_id

  ########################################
  # optional vars
  ########################################
  request_message = var.request_message
}
