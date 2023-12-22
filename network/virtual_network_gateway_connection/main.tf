data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_virtual_network_gateway_connection" "this" {

  ########################################
  # required vars
  ########################################
  name                       = var.name
  resource_group_name        = data.azurerm_resource_group.this.name
  location                   = var.location
  type                       = var.type
  virtual_network_gateway_id = var.virtual_network_gateway_id

  ########################################
  # optional vars
  ########################################
  authorization_key               = var.authorization_key
  dpd_timeout_seconds             = var.dpd_timeout_seconds
  express_route_circuit_id        = var.express_route_circuit_id
  peer_virtual_network_gateway_id = var.peer_virtual_network_gateway_id
  local_azure_ip_address_enabled  = var.local_azure_ip_address_enabled
  local_network_gateway_id        = var.local_network_gateway_id
  routing_weight                  = var.routing_weight # Default: 10
  shared_key                      = var.shared_key
  connection_mode                 = var.connection_mode     # Default: Default
  connection_protocol             = var.connection_protocol # Default: IKEv2
  enable_bgp                      = var.enable_bgp          # Default: False

  dynamic "custom_bgp_addresses" { # var.custom_bgp_addresses
    for_each = var.custom_bgp_addresses != null ? var.custom_bgp_addresses : []
    content {
      primary   = lookup(custom_bgp_addresses.value, "primary") # (Required) 
      secondary = lookup(custom_bgp_addresses.value, "secondary", null)
    }
  }

  express_route_gateway_bypass       = var.express_route_gateway_bypass
  egress_nat_rule_ids                = var.egress_nat_rule_ids
  ingress_nat_rule_ids               = var.ingress_nat_rule_ids
  use_policy_based_traffic_selectors = var.use_policy_based_traffic_selectors # Default: False

  dynamic "ipsec_policy" { # var.ipsec_policy
    for_each = var.ipsec_policy != null ? var.ipsec_policy : []
    content {
      dh_group         = lookup(ipsec_policy.value, "dh_group")         # (Required) possible values: DHGroup1 | DHGroup14 | DHGroup2 | DHGroup2048 | DHGroup24 | ECP256 | ECP384 | None
      ike_encryption   = lookup(ipsec_policy.value, "ike_encryption")   # (Required) possible values: AES128 | AES192 | AES256 | DES | DES3 | GCMAES128 | GCMAES256
      ike_integrity    = lookup(ipsec_policy.value, "ike_integrity")    # (Required) possible values: GCMAES128 | GCMAES256 | MD5 | SHA1 | SHA256 | SHA384
      ipsec_encryption = lookup(ipsec_policy.value, "ipsec_encryption") # (Required) possible values: AES128 | AES192 | AES256 | DES | DES3 | GCMAES128 | GCMAES192 | GCMAES256 | None
      ipsec_integrity  = lookup(ipsec_policy.value, "ipsec_integrity")  # (Required) possible values: GCMAES128 | GCMAES192 | GCMAES256 | MD5 | SHA1 | SHA256
      pfs_group        = lookup(ipsec_policy.value, "pfs_group")        # (Required) possible values: ECP256 | ECP384 | PFS1 | PFS14 | PFS2 | PFS2048 | PFS24 | PFSMM | None
      sa_datasize      = lookup(ipsec_policy.value, "sa_datasize", "102400000")
      sa_lifetime      = lookup(ipsec_policy.value, "sa_lifetime", "27000")
    }
  }

  traffic_selector_policy = var.traffic_selector_policy
  tags                    = var.tags
}
