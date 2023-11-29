

resource "azurerm_cosmosdb_cassandra_datacenter" "this" {

  ########################################
  # required vars
  ########################################
  name                           = var.name
  location                       = var.location
  cassandra_cluster_id           = var.cassandra_cluster_id
  delegated_management_subnet_id = var.delegated_management_subnet_id

  ########################################
  # optional vars
  ########################################
  node_count                      = var.node_count # Default: 3
  backup_storage_customer_key_uri = var.backup_storage_customer_key_uri
  base64_encoded_yaml_fragment    = var.base64_encoded_yaml_fragment
  disk_sku                        = var.disk_sku # Default: P30
  managed_disk_customer_key_uri   = var.managed_disk_customer_key_uri
  sku_name                        = var.sku_name
  disk_count                      = var.disk_count
  availability_zones_enabled      = var.availability_zones_enabled # Default: True
}
