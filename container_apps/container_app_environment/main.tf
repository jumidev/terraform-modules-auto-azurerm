

resource "azurerm_container_app_environment" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  dapr_application_insights_connection_string = var.dapr_application_insights_connection_string
  infrastructure_subnet_id                    = var.infrastructure_subnet_id
  internal_load_balancer_enabled              = var.internal_load_balancer_enabled # Default: False
  zone_redundancy_enabled                     = var.zone_redundancy_enabled        # Default: False
  log_analytics_workspace_id                  = var.log_analytics_workspace_id

  dynamic "workload_profile" { # var.workload_profile
    for_each = var.workload_profile != null ? var.workload_profile : []
    content {
      name                  = workload_profile.key
      workload_profile_type = lookup(workload_profile.value, "workload_profile_type") # (Required) possible values: D4 | D8 | D16 | D32 | E4 | E8 | E16 | E32
      maximum_count         = lookup(workload_profile.value, "maximum_count")         # (Required) 
      minimum_count         = lookup(workload_profile.value, "minimum_count")         # (Required) 
    }
  }

  tags = var.tags
}
