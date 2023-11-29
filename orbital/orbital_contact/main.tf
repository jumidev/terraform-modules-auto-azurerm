

resource "azurerm_orbital_contact" "this" {

  ########################################
  # required vars
  ########################################
  name                   = var.name
  spacecraft_id          = var.spacecraft_id
  reservation_start_time = var.reservation_start_time
  reservation_end_time   = var.reservation_end_time
  ground_station_name    = var.ground_station_name
  contact_profile_id     = var.contact_profile_id
}
