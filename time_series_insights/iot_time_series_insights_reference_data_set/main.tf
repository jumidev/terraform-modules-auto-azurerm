

resource "azurerm_iot_time_series_insights_reference_data_set" "this" {

  ########################################
  # required vars
  ########################################
  name                                = var.name
  time_series_insights_environment_id = var.time_series_insights_environment_id
  location                            = var.location

  key_property {
    name = lookup(key_property.value, "name") # (Required) 
    type = lookup(key_property.value, "type") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  data_string_comparison_behavior = var.data_string_comparison_behavior # Default: Ordinal
  tags                            = var.tags
}
