data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_app_service_environment_v3" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  subnet_id           = var.subnet_id

  ########################################
  # optional vars
  ########################################
  allow_new_private_endpoint_connections = var.allow_new_private_endpoint_connections # Default: True

  dynamic "cluster_setting" { # var.cluster_setting
    for_each = var.cluster_setting != null ? var.cluster_setting : []
    content {
      name  = cluster_setting.key
      value = lookup(cluster_setting.value, "value") # (Required) 
    }
  }

  dedicated_host_count         = var.dedicated_host_count
  zone_redundant               = var.zone_redundant
  internal_load_balancing_mode = var.internal_load_balancing_mode # Default: None
  tags                         = var.tags
}
