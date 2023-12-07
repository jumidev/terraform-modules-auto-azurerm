data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_traffic_manager_profile" "this" {

  ########################################
  # required vars
  ########################################
  name                   = var.name
  resource_group_name    = data.azurerm_resource_group.this.name
  traffic_routing_method = var.traffic_routing_method
  dns_config             = var.dns_config
  monitor_config         = var.monitor_config

  ########################################
  # optional vars
  ########################################
  profile_status       = var.profile_status # Default: Enabled
  Geographic           = var.Geographic
  MultiValue           = var.MultiValue
  Performance          = var.Performance
  Priority             = var.Priority
  Subnet               = var.Subnet
  Weighted             = var.Weighted
  traffic_view_enabled = var.traffic_view_enabled
  max_return           = var.max_return
  tags                 = var.tags
}
