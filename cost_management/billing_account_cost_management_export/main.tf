

resource "azurerm_billing_account_cost_management_export" "this" {

  ########################################
  # required vars
  ########################################
  name                         = var.name
  billing_account_id           = var.billing_account_id
  recurrence_type              = var.recurrence_type
  recurrence_period_start_date = var.recurrence_period_start_date
  recurrence_period_end_date   = var.recurrence_period_end_date

  export_data_storage_location {
    container_id     = lookup(export_data_storage_location.value, "container_id")     # (Required) 
    root_folder_path = lookup(export_data_storage_location.value, "root_folder_path") # (Required) 
  }


  export_data_options {
    type       = lookup(export_data_options.value, "type")       # (Required) 
    time_frame = lookup(export_data_options.value, "time_frame") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  active = var.active # Default: True
}
