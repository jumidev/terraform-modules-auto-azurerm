

resource "azurerm_virtual_hub_ip" "this" {

  ########################################
  # required vars
  ########################################
  name                 = var.name
  virtual_hub_id       = var.virtual_hub_id
  subnet_id            = var.subnet_id
  public_ip_address_id = var.public_ip_address_id

  ########################################
  # optional vars
  ########################################
  private_ip_address           = var.private_ip_address
  private_ip_allocation_method = var.private_ip_allocation_method # Default: Dynamic
}
