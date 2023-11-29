

resource "azurerm_api_management_gateway" "this" {

  ########################################
  # required vars
  ########################################
  name              = var.name
  api_management_id = var.api_management_id

  location_data {
    name     = lookup(location_data.value, "name") # (Required) 
    city     = lookup(location_data.value, "city", null)
    district = lookup(location_data.value, "district", null)
    region   = lookup(location_data.value, "region", null)
  }


  ########################################
  # optional vars
  ########################################
  description = var.description
}
