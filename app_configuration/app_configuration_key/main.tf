

resource "azurerm_app_configuration_key" "this" {

  ########################################
  # required vars
  ########################################
  configuration_store_id = var.configuration_store_id
  key                    = var.key

  ########################################
  # optional vars
  ########################################
  content_type        = var.content_type
  label               = var.label
  value               = var.value
  locked              = var.locked
  type                = var.type # Default: kv
  vault_key_reference = var.vault_key_reference
  tags                = var.tags
}
