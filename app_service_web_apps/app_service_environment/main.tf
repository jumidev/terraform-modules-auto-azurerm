data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_app_service_environment" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  subnet_id           = var.subnet_id
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################

  dynamic "cluster_setting" { # var.cluster_setting
    for_each = var.cluster_setting != null ? var.cluster_setting : []
    content {
      name  = cluster_setting.key
      value = lookup(cluster_setting.value, "value") # (Required) 
    }
  }

  internal_load_balancing_mode = var.internal_load_balancing_mode # Default: None
  pricing_tier                 = var.pricing_tier                 # Default: I1
  front_end_scale_factor       = var.front_end_scale_factor       # Default: 15
  allowed_user_ip_cidrs        = var.allowed_user_ip_cidrs
  tags                         = var.tags
}
