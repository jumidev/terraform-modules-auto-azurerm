

resource "azurerm_container_registry_task_schedule_run_now" "this" {

  ########################################
  # required vars
  ########################################
  container_registry_task_id = var.container_registry_task_id
}
