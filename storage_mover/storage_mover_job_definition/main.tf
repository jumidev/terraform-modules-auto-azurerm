

resource "azurerm_storage_mover_job_definition" "this" {

  ########################################
  # required vars
  ########################################
  name                     = var.name
  storage_mover_project_id = var.storage_mover_project_id
  source_name              = var.source_name
  target_name              = var.target_name
  copy_mode                = var.copy_mode

  ########################################
  # optional vars
  ########################################
  source_sub_path = var.source_sub_path
  target_sub_path = var.target_sub_path
  agent_name      = var.agent_name
  description     = var.description
}
