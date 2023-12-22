data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_data_collection_endpoint" "this" {

  ########################################
  # required vars
  ########################################
  location            = var.location
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  description                   = var.description
  kind                          = var.kind
  public_network_access_enabled = var.public_network_access_enabled # Default: True
  tags                          = var.tags
}

##############################################################################################
# optional azurerm_monitor_data_collection_rule_association 
##############################################################################################
resource "azurerm_monitor_data_collection_rule_association" "this" {
  count                       = var.monitor_data_collection_rule_association != null ? 1 : 0
  target_resource_id          = lookup(var.monitor_data_collection_rule_association, "target_resource_id")
  name                        = lookup(var.monitor_data_collection_rule_association, "name", "configurationAccessEndpoint")
  data_collection_endpoint_id = azurerm_monitor_data_collection_endpoint.this.id
  data_collection_rule_id     = lookup(var.monitor_data_collection_rule_association, "data_collection_rule_id", null)
  description                 = lookup(var.monitor_data_collection_rule_association, "description", null)
}
