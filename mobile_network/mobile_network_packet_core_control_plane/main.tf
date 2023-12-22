data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_mobile_network_packet_core_control_plane" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  location            = var.location
  site_ids            = var.site_ids
  sku                 = var.sku

  dynamic "local_diagnostics_access" { # var.local_diagnostics_access
    for_each = var.local_diagnostics_access != null ? var.local_diagnostics_access : []
    content {
      authentication_type          = lookup(local_diagnostics_access.value, "authentication_type") # (Required) possible values: AAD | Password
      https_server_certificate_url = lookup(local_diagnostics_access.value, "https_server_certificate_url", null)
    }
  }


  ########################################
  # optional vars
  ########################################
  control_plane_access_name         = var.control_plane_access_name
  control_plane_access_ipv4_address = var.control_plane_access_ipv4_address
  control_plane_access_ipv4_subnet  = var.control_plane_access_ipv4_subnet
  control_plane_access_ipv4_gateway = var.control_plane_access_ipv4_gateway
  user_equipment_mtu_in_bytes       = var.user_equipment_mtu_in_bytes
  core_network_technology           = var.core_network_technology

  dynamic "platform" { # var.platform
    for_each = var.platform != null ? var.platform : []
    content {
      type                      = lookup(platform.value, "type") # (Required) possible values: AKS-HCI | 3P-AZURE-STACK-HCI | BaseVM
      edge_device_id            = lookup(platform.value, "edge_device_id", null)
      arc_kubernetes_cluster_id = lookup(platform.value, "arc_kubernetes_cluster_id", null)
      stack_hci_cluster_id      = lookup(platform.value, "stack_hci_cluster_id", null)
      custom_location_id        = lookup(platform.value, "custom_location_id", null)
    }
  }


  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type         = lookup(identity.value, "type")         # (Required) possible values: SystemAssigned | UserAssigned | SystemAssigned, UserAssigned
      identity_ids = lookup(identity.value, "identity_ids") # (Required) 
    }
  }

  interoperability_settings_json = var.interoperability_settings_json
  tags                           = var.tags
  software_version               = var.software_version
}
