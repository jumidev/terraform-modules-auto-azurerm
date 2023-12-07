data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_healthcare_service" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  access_policy_object_ids = var.access_policy_object_ids

  dynamic "authentication_configuration" { # var.authentication_configuration
    for_each = var.authentication_configuration != null ? var.authentication_configuration : []
    content {
      authority           = lookup(authentication_configuration.value, "authority", null)
      audience            = lookup(authentication_configuration.value, "audience", null)
      smart_proxy_enabled = lookup(authentication_configuration.value, "smart_proxy_enabled", null)
    }
  }

  cosmosdb_throughput                   = var.cosmosdb_throughput # Default: 1000
  cosmosdb_key_vault_key_versionless_id = var.cosmosdb_key_vault_key_versionless_id

  dynamic "cors_configuration" { # var.cors_configuration
    for_each = var.cors_configuration != null ? var.cors_configuration : []
    content {
      allowed_origins    = lookup(cors_configuration.value, "allowed_origins", null)
      allowed_headers    = lookup(cors_configuration.value, "allowed_headers", null)
      allowed_methods    = lookup(cors_configuration.value, "allowed_methods", null)
      max_age_in_seconds = lookup(cors_configuration.value, "max_age_in_seconds", null)
      allow_credentials  = lookup(cors_configuration.value, "allow_credentials", null)
    }
  }

  public_network_access_enabled = var.public_network_access_enabled # Default: True
  kind                          = var.kind                          # Default: fhir
  tags                          = var.tags
}
