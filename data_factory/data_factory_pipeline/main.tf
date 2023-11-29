

resource "azurerm_data_factory_pipeline" "this" {

  ########################################
  # required vars
  ########################################
  name            = var.name
  data_factory_id = var.data_factory_id

  ########################################
  # optional vars
  ########################################
  description                    = var.description
  annotations                    = var.annotations
  concurrency                    = var.concurrency
  folder                         = var.folder
  moniter_metrics_after_duration = var.moniter_metrics_after_duration
  parameters                     = var.parameters
  variables                      = var.variables
  activities_json                = var.activities_json
}
