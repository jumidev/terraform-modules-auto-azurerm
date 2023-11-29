

resource "azurerm_capacity_reservation" "this" {

  ########################################
  # required vars
  ########################################
  name                          = var.name
  capacity_reservation_group_id = var.capacity_reservation_group_id

  sku {
    name     = lookup(sku.value, "name")     # (Required) 
    capacity = lookup(sku.value, "capacity") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  zone = var.zone
  tags = var.tags
}
