

resource "azurerm_sentinel_data_connector_aws_cloud_trail" "this" {

  ########################################
  # required vars
  ########################################
  aws_role_arn               = var.aws_role_arn
  log_analytics_workspace_id = var.log_analytics_workspace_id
  name                       = var.name
}
