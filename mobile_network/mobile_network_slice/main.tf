

resource "azurerm_mobile_network_slice" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  mobile_network_id = var.mobile_network_id
  location          = var.location

  single_network_slice_selection_assistance_information {
    slice_differentiator = lookup(single_network_slice_selection_assistance_information.value, "slice_differentiator", null)
    slice_service_type   = lookup(single_network_slice_selection_assistance_information.value, "slice_service_type") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  description = var.description
  tags        = var.tags
}
