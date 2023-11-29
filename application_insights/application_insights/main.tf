data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_application_insights" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  application_type    = var.application_type

  ########################################
  # optional vars
  ########################################
  daily_data_cap_in_gb                  = var.daily_data_cap_in_gb
  daily_data_cap_notifications_disabled = var.daily_data_cap_notifications_disabled
  retention_in_days                     = var.retention_in_days   # Default: 90
  sampling_percentage                   = var.sampling_percentage # Default: 100
  disable_ip_masking                    = var.disable_ip_masking  # Default: False
  tags                                  = var.tags
  workspace_id                          = var.workspace_id
  local_authentication_disabled         = var.local_authentication_disabled       # Default: False
  internet_ingestion_enabled            = var.internet_ingestion_enabled          # Default: True
  internet_query_enabled                = var.internet_query_enabled              # Default: True
  force_customer_storage_for_profiler   = var.force_customer_storage_for_profiler # Default: False
}
