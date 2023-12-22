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

  dns_config {
    relative_name = lookup(dns_config.value, "relative_name") # (Required) 
    ttl           = lookup(dns_config.value, "ttl")           # (Required) 
  }


  monitor_config {
    protocol                     = lookup(monitor_config.value, "protocol") # (Required) 
    port                         = lookup(monitor_config.value, "port")     # (Required) 
    path                         = lookup(monitor_config.value, "path", null)
    expected_status_code_ranges  = lookup(monitor_config.value, "expected_status_code_ranges", null)
    custom_header                = lookup(monitor_config.value, "custom_header", null)
    interval_in_seconds          = lookup(monitor_config.value, "interval_in_seconds", 30)
    timeout_in_seconds           = lookup(monitor_config.value, "timeout_in_seconds", 10)
    tolerated_number_of_failures = lookup(monitor_config.value, "tolerated_number_of_failures", 3)
  }


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
