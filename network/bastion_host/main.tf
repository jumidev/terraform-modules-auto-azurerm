

resource "azurerm_bastion_host" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location

  ip_configuration {
    name                 = lookup(ip_configuration.value, "name")                 # (Required) 
    subnet_id            = lookup(ip_configuration.value, "subnet_id")            # (Required) 
    public_ip_address_id = lookup(ip_configuration.value, "public_ip_address_id") # (Required) 
  }


  ########################################
  # optional vars
  ########################################
  copy_paste_enabled     = var.copy_paste_enabled     # Default: True
  file_copy_enabled      = var.file_copy_enabled      # Default: False
  sku                    = var.sku                    # Default: Basic
  ip_connect_enabled     = var.ip_connect_enabled     # Default: False
  scale_units            = var.scale_units            # Default: 2
  shareable_link_enabled = var.shareable_link_enabled # Default: False
  tunneling_enabled      = var.tunneling_enabled      # Default: False
  tags                   = var.tags
}
