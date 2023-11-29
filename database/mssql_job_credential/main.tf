

resource "azurerm_mssql_job_credential" "this" {

  ########################################
  # required vars
  ########################################
  name         = var.name
  job_agent_id = var.job_agent_id
  username     = var.username
  password     = var.password
}
