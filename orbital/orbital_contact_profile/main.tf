data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_orbital_contact_profile" "this" {

  ########################################
  # required vars
  ########################################
  name                              = var.name
  resource_group_name               = data.azurerm_resource_group.this.name
  location                          = var.location
  minimum_variable_contact_duration = var.minimum_variable_contact_duration
  auto_tracking                     = var.auto_tracking
  network_configuration_subnet_id   = var.network_configuration_subnet_id

  links {
    channels     = lookup(links.value, "channels")     # (Required) 
    direction    = lookup(links.value, "direction")    # (Required) 
    name         = lookup(links.value, "name")         # (Required) 
    polarization = lookup(links.value, "polarization") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  event_hub_uri             = var.event_hub_uri
  minimum_elevation_degrees = var.minimum_elevation_degrees
  tags                      = var.tags
}
