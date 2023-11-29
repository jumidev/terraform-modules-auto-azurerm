

resource "azurerm_kusto_script" "this" {

  ########################################
  # required vars
  ########################################
  name        = var.name
  database_id = var.database_id

  ########################################
  # optional vars
  ########################################
  continue_on_errors_enabled         = var.continue_on_errors_enabled
  force_an_update_when_value_changed = var.force_an_update_when_value_changed
  script_content                     = var.script_content
  sas_token                          = var.sas_token
  url                                = var.url
}
