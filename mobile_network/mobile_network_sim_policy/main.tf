

resource "azurerm_mobile_network_sim_policy" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  mobile_network_id = var.mobile_network_id
  default_slice_id  = var.default_slice_id
  location          = var.location

  user_equipment_aggregate_maximum_bit_rate {
    downlink = lookup(user_equipment_aggregate_maximum_bit_rate.value, "downlink") # (Required) 
    uplink   = lookup(user_equipment_aggregate_maximum_bit_rate.value, "uplink")   # (Required) 
  }


  slice {
    data_network            = lookup(slice.value, "data_network")            # (Required) 
    default_data_network_id = lookup(slice.value, "default_data_network_id") # (Required) 
    slice_id                = lookup(slice.value, "slice_id")                # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  registration_timer_in_seconds          = var.registration_timer_in_seconds # Default: 3240
  rat_frequency_selection_priority_index = var.rat_frequency_selection_priority_index
  tags                                   = var.tags
}
