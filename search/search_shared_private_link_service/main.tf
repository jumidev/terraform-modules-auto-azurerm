

resource "azurerm_search_shared_private_link_service" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  search_service_id  = var.search_service_id
  subresource_name   = var.subresource_name
  target_resource_id = var.target_resource_id

  ########################################
  # optional vars
  ########################################
  request_message = var.request_message
}
