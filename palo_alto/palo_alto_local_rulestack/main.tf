data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_palo_alto_local_rulestack" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location

  ########################################
  # optional vars
  ########################################
  anti_spyware_profile  = var.anti_spyware_profile
  anti_virus_profile    = var.anti_virus_profile
  description           = var.description
  dns_subscription      = var.dns_subscription
  file_blocking_profile = var.file_blocking_profile
  url_filtering_profile = var.url_filtering_profile
  vulnerability_profile = var.vulnerability_profile
}
