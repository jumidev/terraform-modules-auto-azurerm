resource "random_string" "default_admin_password" {
  length  = 32
  special = false
  upper   = true
}


resource "azurerm_cosmosdb_cassandra_cluster" "this" {

  ########################################
  # required vars
  ########################################
  name                           = var.name
  resource_group_name            = var.resource_group_name
  location                       = var.location
  delegated_management_subnet_id = var.delegated_management_subnet_id
  default_admin_password         = random_string.default_admin_password.result

  ########################################
  # optional vars
  ########################################
  authentication_method            = var.authentication_method # Default: Cassandra
  client_certificate_pems          = var.client_certificate_pems
  external_gossip_certificate_pems = var.external_gossip_certificate_pems
  external_seed_node_ip_addresses  = var.external_seed_node_ip_addresses
  hours_between_backups            = var.hours_between_backups # Default: 24

  dynamic "identity" { # var.identity
    for_each = var.identity != null ? var.identity : []
    content {
      type = lookup(identity.value, "type") # (Required) possible values: SystemAssigned
    }
  }

  repair_enabled = var.repair_enabled # Default: True
  version        = var.version        # Default: 3.11
  tags           = var.tags
}
