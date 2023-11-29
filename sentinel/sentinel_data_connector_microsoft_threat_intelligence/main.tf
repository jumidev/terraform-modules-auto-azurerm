

resource "azurerm_sentinel_data_connector_microsoft_threat_intelligence" "this" {

  ########################################
  # required vars
  ########################################
  name                       = var.name
  log_analytics_workspace_id = var.log_analytics_workspace_id

  ########################################
  # optional vars
  ########################################
  bing_safety_phishing_url_lookback_date       = var.bing_safety_phishing_url_lookback_date
  microsoft_emerging_threat_feed_lookback_date = var.microsoft_emerging_threat_feed_lookback_date
  tenant_id                                    = var.tenant_id
}
