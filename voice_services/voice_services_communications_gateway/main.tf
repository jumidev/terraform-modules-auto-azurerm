data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_voice_services_communications_gateway" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  location            = var.location
  resource_group_name = data.azurerm_resource_group.this.name
  connectivity        = var.connectivity
  codecs              = var.codecs
  e911_type           = var.e911_type
  platforms           = var.platforms

  service_location {
    location                                  = lookup(service_location.value, "location")           # (Required) 
    operator_addresses                        = lookup(service_location.value, "operator_addresses") # (Required) 
    allowed_media_source_address_prefixes     = lookup(service_location.value, "allowed_media_source_address_prefixes", null)
    allowed_signaling_source_address_prefixes = lookup(service_location.value, "allowed_signaling_source_address_prefixes", null)
    esrp_addresses                            = lookup(service_location.value, "esrp_addresses", null)
  }


  ########################################
  # optional vars
  ########################################
  auto_generated_domain_name_label_scope = var.auto_generated_domain_name_label_scope # Default: TenantReuse
  api_bridge                             = var.api_bridge
  emergency_dial_strings                 = var.emergency_dial_strings
  on_prem_mcp_enabled                    = var.on_prem_mcp_enabled
  tags                                   = var.tags
  microsoft_teams_voicemail_pilot_number = var.microsoft_teams_voicemail_pilot_number
}
