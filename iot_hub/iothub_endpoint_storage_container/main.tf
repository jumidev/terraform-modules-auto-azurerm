data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_iothub_endpoint_storage_container" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  container_name      = var.container_name
  iothub_id           = var.iothub_id

  ########################################
  # optional vars
  ########################################
  authentication_type        = var.authentication_type # Default: keyBased
  identity_id                = var.identity_id
  endpoint_uri               = var.endpoint_uri
  connection_string          = var.connection_string
  batch_frequency_in_seconds = var.batch_frequency_in_seconds
  max_chunk_size_in_bytes    = var.max_chunk_size_in_bytes
  encoding                   = var.encoding         # Default: Avro
  file_name_format           = var.file_name_format # Default: {iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}
}
