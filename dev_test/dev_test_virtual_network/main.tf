data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_dev_test_virtual_network" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  lab_name            = var.lab_name
  resource_group_name = data.azurerm_resource_group.this.name

  ########################################
  # optional vars
  ########################################
  description = var.description

  dynamic "subnet" { # var.subnet
    for_each = var.subnet != null ? var.subnet : []
    content {
      use_public_ip_address           = lookup(subnet.value, "use_public_ip_address", "Allow")
      use_in_virtual_machine_creation = lookup(subnet.value, "use_in_virtual_machine_creation", "Allow")
    }
  }

  tags = var.tags
}
