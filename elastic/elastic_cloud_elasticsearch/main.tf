data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_elastic_cloud_elasticsearch" "this" {

  ########################################
  # required vars
  ########################################
  elastic_cloud_email_address = var.elastic_cloud_email_address
  location                    = var.location
  name                        = var.name
  resource_group_name         = data.azurerm_resource_group.this.name
  sku_name                    = var.sku_name

  ########################################
  # optional vars
  ########################################

  dynamic "logs" { # var.logs
    for_each = var.logs != null ? var.logs : []
    content {

      dynamic "filtering_tag" { # logs.value.filtering_tag
        for_each = logs.value.filtering_tag != null ? logs.value.filtering_tag : []
        content {
          action = lookup(filtering_tag.value, "action") # (Required) possible values: Exclude | Include
          name   = filtering_tag.key
          value  = lookup(filtering_tag.value, "value") # (Required) 
        }
      }

      send_activity_logs     = lookup(logs.value, "send_activity_logs", false)
      send_azuread_logs      = lookup(logs.value, "send_azuread_logs", false)
      send_subscription_logs = lookup(logs.value, "send_subscription_logs", false)
    }
  }

  monitoring_enabled = var.monitoring_enabled # Default: True
  tags               = var.tags
}
