data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_databox_edge_order" "this" {

  ########################################
  # required vars
  ########################################
  resource_group_name = data.azurerm_resource_group.this.name
  device_name         = var.device_name

  contact {
    company_name = lookup(contact.value, "company_name") # (Required) 
    name         = lookup(contact.value, "name")         # (Required) 
    emails       = lookup(contact.value, "emails")       # (Required) 
    phone_number = lookup(contact.value, "phone_number") # (Required) 
  }


  shipment_address {
    address     = lookup(shipment_address.value, "address")     # (Required) 
    city        = lookup(shipment_address.value, "city")        # (Required) 
    country     = lookup(shipment_address.value, "country")     # (Required) 
    postal_code = lookup(shipment_address.value, "postal_code") # (Required) 
    state       = lookup(shipment_address.value, "state")       # (Required) 
  }

}
