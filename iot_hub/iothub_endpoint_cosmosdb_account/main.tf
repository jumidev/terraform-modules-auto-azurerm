data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_iothub_endpoint_cosmosdb_account" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  iothub_id           = var.iothub_id
  container_name      = var.container_name
  database_name       = var.database_name
  endpoint_uri        = var.endpoint_uri

  ########################################
  # optional vars
  ########################################
  authentication_type    = var.authentication_type # Default: keyBased
  identity_id            = var.identity_id
  partition_key_name     = var.partition_key_name
  partition_key_template = var.partition_key_template
  primary_key            = var.primary_key
  secondary_key          = var.secondary_key
}
