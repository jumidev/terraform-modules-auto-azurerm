

resource "azurerm_batch_job" "this" {

  ########################################
  # required vars
  ########################################
  batch_pool_id = var.batch_pool_id
  name          = var.name

  ########################################
  # optional vars
  ########################################
  common_environment_properties = var.common_environment_properties
  display_name                  = var.display_name
  task_retry_maximum            = var.task_retry_maximum
  priority                      = var.priority # Default: 0
}
