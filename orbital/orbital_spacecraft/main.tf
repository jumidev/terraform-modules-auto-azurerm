data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_orbital_spacecraft" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  norad_id            = var.norad_id

  links {
    bandwidth_mhz        = lookup(links.value, "bandwidth_mhz")        # (Required) 
    center_frequency_mhz = lookup(links.value, "center_frequency_mhz") # (Required) 
    direction            = lookup(links.value, "direction")            # (Required) 
    polarization         = lookup(links.value, "polarization")         # (Required) 
    name                 = lookup(links.value, "name")                 # (Required) 
  }

  two_line_elements = var.two_line_elements
  title_line        = var.title_line

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
