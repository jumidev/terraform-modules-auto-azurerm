data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_logic_app_integration_account_batch_configuration" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  resource_group_name      = data.azurerm_resource_group.this.name
  integration_account_name = var.integration_account_name
  batch_group_name         = var.batch_group_name

  release_criteria {
    batch_size    = lookup(release_criteria.value, "batch_size", null)
    message_count = lookup(release_criteria.value, "message_count", null)
    recurrence    = lookup(release_criteria.value, "recurrence", null)
  }


  ########################################
  # optional vars
  ########################################
  metadata = var.metadata
}
