

resource "azurerm_security_center_storage_defender" "this" {

  ########################################
  # required vars
  ########################################
  storage_account_id = var.storage_account_id

  ########################################
  # optional vars
  ########################################
  override_subscription_settings_enabled      = var.override_subscription_settings_enabled      # Default: False
  malware_scanning_on_upload_enabled          = var.malware_scanning_on_upload_enabled          # Default: False
  malware_scanning_on_upload_cap_gb_per_month = var.malware_scanning_on_upload_cap_gb_per_month # Default: -1
  sensitive_data_discovery_enabled            = var.sensitive_data_discovery_enabled            # Default: False
}
