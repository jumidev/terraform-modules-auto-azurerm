data "azurerm_eventhub_namespace" "this" {
  name                = var.eventhub_namespace_name
  resource_group_name = var.eventhub_namespace_resource_group_name == null ? null : var.eventhub_namespace_resource_group_name
}
data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_notification_hub" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  namespace_name      = data.azurerm_eventhub_namespace.this.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################

  dynamic "apns_credential" { # var.apns_credential
    for_each = var.apns_credential != null ? var.apns_credential : []
    content {
      application_mode = lookup(apns_credential.value, "application_mode") # (Required) possible values: Production | Sandbox
      bundle_id        = lookup(apns_credential.value, "bundle_id")        # (Required) 
      key_id           = lookup(apns_credential.value, "key_id")           # (Required) 
      team_id          = lookup(apns_credential.value, "team_id")          # (Required) 
      token            = lookup(apns_credential.value, "token")            # (Required) 
    }
  }


  dynamic "gcm_credential" { # var.gcm_credential
    for_each = var.gcm_credential != null ? var.gcm_credential : []
    content {
      api_key = lookup(gcm_credential.value, "api_key") # (Required) 
    }
  }

  tags = var.tags
}
