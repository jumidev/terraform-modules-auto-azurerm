

resource "azurerm_automation_watcher" "this" {

  ########################################
  # required vars
  ########################################
  automation_account_id          = var.automation_account_id
  name                           = var.name
  execution_frequency_in_seconds = var.execution_frequency_in_seconds
  location                       = var.location
  script_name                    = var.script_name
  script_run_on                  = var.script_run_on

  ########################################
  # optional vars
  ########################################
  description       = var.description
  etag              = var.etag
  script_parameters = var.script_parameters
  tags              = var.tags
}
