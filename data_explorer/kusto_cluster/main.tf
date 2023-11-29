data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_kusto_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name

  sku {
    name     = lookup(sku.value, "name") # (Required) 
    capacity = lookup(sku.value, "capacity", null)
  }


  ########################################
  # optional vars
  ########################################
  allowed_fqdns             = var.allowed_fqdns
  allowed_ip_ranges         = var.allowed_ip_ranges
  double_encryption_enabled = var.double_encryption_enabled

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  auto_stop_enabled                  = var.auto_stop_enabled # Default: True
  disk_encryption_enabled            = var.disk_encryption_enabled
  streaming_ingestion_enabled        = var.streaming_ingestion_enabled
  public_ip_type                     = var.public_ip_type                     # Default: IPv4
  public_network_access_enabled      = var.public_network_access_enabled      # Default: True
  outbound_network_access_restricted = var.outbound_network_access_restricted # Default: False
  purge_enabled                      = var.purge_enabled

  dynamic "virtual_network_configuration" { # var.virtual_network_configuration
    for_each = var.virtual_network_configuration != null ? var.virtual_network_configuration : []
    content {
      subnet_id                    = lookup(virtual_network_configuration.value, "subnet_id")                    # (Required) 
      engine_public_ip_id          = lookup(virtual_network_configuration.value, "engine_public_ip_id")          # (Required) 
      data_management_public_ip_id = lookup(virtual_network_configuration.value, "data_management_public_ip_id") # (Required) 
    }
  }

  language_extensions = var.language_extensions

  dynamic "optimized_auto_scale" { # var.optimized_auto_scale
    for_each = var.optimized_auto_scale != null ? var.optimized_auto_scale : []
    content {
      minimum_instances = lookup(optimized_auto_scale.value, "minimum_instances") # (Required) 
      maximum_instances = lookup(optimized_auto_scale.value, "maximum_instances") # (Required) 
    }
  }

  tags                     = var.tags
  trusted_external_tenants = var.trusted_external_tenants
  zones                    = var.zones
}
