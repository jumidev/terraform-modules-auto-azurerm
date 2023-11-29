data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_dev_test_linux_virtual_machine" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  lab_name            = var.lab_name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  gallery_image_reference {
    offer     = lookup(gallery_image_reference.value, "offer")     # (Required) 
    publisher = lookup(gallery_image_reference.value, "publisher") # (Required) 
    sku       = lookup(gallery_image_reference.value, "sku")       # (Required) 
    version   = lookup(gallery_image_reference.value, "version")   # (Required) 
  }

  lab_subnet_name        = var.lab_subnet_name
  lab_virtual_network_id = var.lab_virtual_network_id
  size                   = var.size
  storage_type           = var.storage_type
  username               = var.username

  ########################################
  # optional vars
  ########################################
  allow_claim                = var.allow_claim # Default: True
  disallow_public_ip_address = var.disallow_public_ip_address

  dynamic "inbound_nat_rule" { # var.inbound_nat_rule
    for_each = var.inbound_nat_rule != null ? var.inbound_nat_rule : []
    content {
      protocol     = lookup(inbound_nat_rule.value, "protocol")     # (Required) possible values: Tcp | Udp
      backend_port = lookup(inbound_nat_rule.value, "backend_port") # (Required) 
    }
  }

  notes    = var.notes
  password = var.password
  ssh_key  = var.ssh_key
  tags     = var.tags
}
