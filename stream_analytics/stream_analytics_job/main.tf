data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_stream_analytics_job" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  stream_analytics_cluster_id              = var.stream_analytics_cluster_id
  compatibility_level                      = var.compatibility_level
  data_locale                              = var.data_locale
  events_late_arrival_max_delay_in_seconds = var.events_late_arrival_max_delay_in_seconds # Default: 5
  events_out_of_order_max_delay_in_seconds = var.events_out_of_order_max_delay_in_seconds # Default: 0
  events_out_of_order_policy               = var.events_out_of_order_policy               # Default: Adjust
  type                                     = var.type                                     # Default: Cloud

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type = lookup(identity.value, "type") # (Required) 
    }
  }

  output_error_policy    = var.output_error_policy # Default: Drop
  streaming_units        = var.streaming_units
  content_storage_policy = var.content_storage_policy # Default: SystemAccount

  dynamic "job_storage_account" { # var.job_storage_account
    for_each = var.job_storage_account != null ? var.job_storage_account : []
    content {
      authentication_mode  = lookup(job_storage_account.value, "authentication_mode", "ConnectionString")
      account_name         = lookup(job_storage_account.value, "account_name")         # (Required) 
      account_key          = lookup(job_storage_account.value, "account_key")          # (Required) 
      transformation_query = lookup(job_storage_account.value, "transformation_query") # (Required) 
      tags                 = lookup(job_storage_account.value, "tags", null)
    }
  }

}
