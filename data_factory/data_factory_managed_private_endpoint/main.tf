

resource "azurerm_data_factory_managed_private_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  name               = var.name
  data_factory_id    = var.data_factory_id
  target_resource_id = var.target_resource_id

  ########################################
  # optional vars
  ########################################
  subresource_name = var.subresource_name
  fqdns            = var.fqdns
}
