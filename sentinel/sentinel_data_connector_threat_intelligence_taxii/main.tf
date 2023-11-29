

resource "azurerm_sentinel_data_connector_threat_intelligence_taxii" "this" {

  ########################################
  # required vars
  ########################################
  log_analytics_workspace_id = var.log_analytics_workspace_id
  name                       = var.name
  display_name               = var.display_name
  api_root_url               = var.api_root_url
  collection_id              = var.collection_id

  ########################################
  # optional vars
  ########################################
  user_name         = var.user_name
  password          = var.password
  polling_frequency = var.polling_frequency # Default: OnceAnHour
  lookback_date     = var.lookback_date     # Default: 1970-01-01T00:00:00Z
  tenant_id         = var.tenant_id
}
