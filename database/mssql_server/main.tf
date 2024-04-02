resource "random_string" "administrator_login_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_mssql_server" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  version             = var.version

  ########################################
  # optional vars
  ########################################
  administrator_login          = var.administrator_login
  administrator_login_password = random_string.administrator_login_password.result

  dynamic "azuread_administrator" { # var.azuread_administrator
    for_each = var.azuread_administrator != null ? var.azuread_administrator : []
    content {
      login_username              = lookup(azuread_administrator.value, "login_username") # (Required) 
      object_id                   = lookup(azuread_administrator.value, "object_id")      # (Required) 
      tenant_id                   = lookup(azuread_administrator.value, "tenant_id", null)
      azuread_authentication_only = lookup(azuread_administrator.value, "azuread_authentication_only", null)
    }
  }

  connection_policy = var.connection_policy # Default: Default

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type") # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids", null)
    }
  }

  transparent_data_encryption_key_vault_key_id = var.transparent_data_encryption_key_vault_key_id
  minimum_tls_version                          = var.minimum_tls_version                  # Default: 1.2
  public_network_access_enabled                = var.public_network_access_enabled        # Default: True
  outbound_network_restriction_enabled         = var.outbound_network_restriction_enabled # Default: False
  primary_user_assigned_identity_id            = var.primary_user_assigned_identity_id
  tags                                         = var.tags
}
