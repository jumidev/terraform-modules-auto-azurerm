

resource "azurerm_mssql_job_agent" "this" {

  ########################################
  # required vars
  ########################################
  name        = var.name
  location    = var.location
  database_id = var.database_id

  ########################################
  # optional vars
  ########################################
  tags = var.tags
}
