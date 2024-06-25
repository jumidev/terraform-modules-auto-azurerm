

resource "azurerm_workloads_sap_three_tier_virtual_instance" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  app_location        = var.app_location
  environment         = var.environment
  sap_fqdn            = var.sap_fqdn
  sap_product         = var.sap_product

  three_tier_configuration {
    app_resource_group_name          = lookup(three_tier_configuration.value, "app_resource_group_name")          # (Required) 
    application_server_configuration = lookup(three_tier_configuration.value, "application_server_configuration") # (Required) 
    central_server_configuration     = lookup(three_tier_configuration.value, "central_server_configuration")     # (Required) 
    database_server_configuration    = lookup(three_tier_configuration.value, "database_server_configuration")    # (Required) 
    resource_names                   = lookup(three_tier_configuration.value, "resource_names", null)
    high_availability_type           = lookup(three_tier_configuration.value, "high_availability_type", null)
    secondary_ip_enabled             = lookup(three_tier_configuration.value, "secondary_ip_enabled", false)
    transport_create_and_mount       = lookup(three_tier_configuration.value, "transport_create_and_mount", null)
  }


  ########################################
  # optional vars
  ########################################

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type")         # (Required) 
      identity_ids = lookup(identity.value, "identity_ids") # (Required) 
    }
  }

  managed_resource_group_name = var.managed_resource_group_name
  tags                        = var.tags
}
