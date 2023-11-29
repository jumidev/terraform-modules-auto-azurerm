data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_media_streaming_locator" "this" {

  ########################################
  # required vars
  ########################################
  asset_name                  = var.asset_name
  media_services_account_name = var.media_services_account_name
  name                        = var.name
  resource_group_name         = data.azurerm_resource_group.this.name
  streaming_policy_name       = var.streaming_policy_name

  ########################################
  # optional vars
  ########################################
  alternative_media_id = var.alternative_media_id

  dynamic "content_key" { # var.content_key
    for_each = var.content_key != null ? var.content_key : []
    content {
      content_key_id                      = lookup(content_key.value, "content_key_id", null)
      label_reference_in_streaming_policy = lookup(content_key.value, "label_reference_in_streaming_policy", null)
      policy_name                         = lookup(content_key.value, "policy_name", null)
      type                                = lookup(content_key.value, "type", null)
      value                               = lookup(content_key.value, "value", null)
    }
  }

  default_content_key_policy_name = var.default_content_key_policy_name
  end_time                        = var.end_time
  filter_names                    = var.filter_names
  start_time                      = var.start_time
  streaming_locator_id            = var.streaming_locator_id
}
