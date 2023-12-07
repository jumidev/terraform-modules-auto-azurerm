data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_datadog_monitors" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  sku_name            = var.sku_name

  user {
    name         = lookup(user.value, "name")  # (Required) 
    email        = lookup(user.value, "email") # (Required) 
    phone_number = lookup(user.value, "phone_number", null)
  }


  datadog_organization {
    api_key           = lookup(datadog_organization.value, "api_key")         # (Required) 
    application_key   = lookup(datadog_organization.value, "application_key") # (Required) 
    enterprise_app_id = lookup(datadog_organization.value, "enterprise_app_id", null)
    linking_auth_code = lookup(datadog_organization.value, "linking_auth_code", null)
    linking_client_id = lookup(datadog_organization.value, "linking_client_id", null)
    redirect_uri      = lookup(datadog_organization.value, "redirect_uri", null)
  }


  ########################################
  # optional vars
  ########################################

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type = lookup(identity.value, "type") # (Required) possible values: SystemAssigned
    }
  }

  monitoring_enabled = var.monitoring_enabled # Default: True
  tags               = var.tags
}
