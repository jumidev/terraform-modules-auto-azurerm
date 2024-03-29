# REQUIRED VARIABLES

variable "name" {
  description = "(REQUIRED) Specifies the name of the Log Analytics Workspace. Workspace name should include 4-63 letters, digits or '-'. The '-' shouldn't be the first or the last symbol. Changing this forces a new resource to be created."
  type        = string

}
variable "resource_group_name" {
  description = "(REQUIRED) The name of the resource group in which the Log Analytics workspace is created. Changing this forces a new resource to be created."
  type        = string

}
variable "location" {
  description = "(REQUIRED) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
  type        = string

}

# OPTIONAL VARIABLES

variable "allow_resource_only_permissions" {
  description = "Specifies if the log Analytics Workspace allow users accessing to data associated with resources they have permission to view, without permission to workspace. Defaults to 'true'."
  type        = bool
  default     = true
}
variable "local_authentication_disabled" {
  description = "Specifies if the log Analytics workspace should enforce authentication using Azure AD. Defaults to 'false'."
  type        = bool
  default     = false
}
variable "sku" {
  description = "Specifies the SKU of the Log Analytics Workspace. Possible values are 'Free', 'PerNode', 'Premium', 'Standard', 'Standalone', 'Unlimited', 'CapacityReservation', and 'PerGB2018' (new SKU as of '2018-04-03'). Defaults to 'PerGB2018'. ~> **NOTE:** A new pricing model took effect on '2018-04-03', which requires the SKU 'PerGB2018'. If you're provisioned resources before this date you have the option of remaining with the previous Pricing SKU and using the other SKUs defined above. More information about [the Pricing SKUs is available at the following URI](https://aka.ms/PricingTierWarning). ~> **NOTE:** Changing 'sku' forces a new Log Analytics Workspace to be created, except when changing between 'PerGB2018' and 'CapacityReservation'. However, changing 'sku' to 'CapacityReservation' or changing 'reservation_capacity_in_gb_per_day' to a higher tier will lead to a 31-days commitment period, during which the SKU cannot be changed to a lower one. Please refer to [official documentation](https://learn.microsoft.com/en-us/azure/azure-monitor/logs/cost-logs#commitment-tiers) for further information. ~> **NOTE:** The 'Free' SKU has a default 'daily_quota_gb' value of '0.5' (GB)."
  type        = string
  default     = "PerGB2018"
}
variable "retention_in_days" {
  description = "The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730."
  type        = number
  default     = null
}
variable "daily_quota_gb" {
  description = "The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted. ~> **NOTE:** When 'sku' is set to 'Free' this field should not be set and has a default value of '0.5'."
  type        = number
  default     = sku
}
variable "cmk_for_query_forced" {
  description = "Is Customer Managed Storage mandatory for query management?"
  type        = bool
  default     = null
}
variable "identity" {
  description = "An 'identity' block."
  type        = map(any)
  default     = null
}
#
# identity block structure:
#   type (string)           : (REQUIRED) Specifies the identity type of the Log Analytics Workspace. Possible values are 'SystemAssigned' (where Azure will generate a Service Principal for you) and 'UserAssigned' where you can specify the Service Principal IDs in the 'identity_ids' field. ~> **NOTE:** When 'type' is set to 'SystemAssigned', The assigned 'principal_id' and 'tenant_id' can be retrieved after the Log Analytics Workspace has been created.
#   identity_ids (list)     : Specifies a list of user managed identity ids to be assigned. Required if 'type' is 'UserAssigned'.


variable "internet_ingestion_enabled" {
  description = "Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "internet_query_enabled" {
  description = "Should the Log Analytics Workspace support querying over the Public Internet? Defaults to 'true'."
  type        = bool
  default     = true
}
variable "reservation_capacity_in_gb_per_day" {
  description = "The capacity reservation level in GB for this workspace. Possible values are '100', '200', '300', '400', '500', '1000', '2000' and '5000'. ~> **NOTE:** 'reservation_capacity_in_gb_per_day' can only be used when the 'sku' is set to 'CapacityReservation'."
  type        = number
  default     = null
}
variable "data_collection_rule_id" {
  description = "The ID of the Data Collection Rule to use for this workspace."
  type        = string
  default     = null
}
variable "immediate_data_purge_on_30_days_enabled" {
  description = "Whether to remove the data in the Log Analytics Workspace immediately after 30 days."
  type        = bool
  default     = null
}
variable "tags" {
  description = "A mapping of tags to assign to the resource. ~> **NOTE:** If a 'azurerm_log_analytics_workspace' is connected to a 'azurerm_log_analytics_cluster' via a 'azurerm_log_analytics_linked_service' you will not be able to modify the workspaces 'sku' field until the link between the workspace and the cluster has been broken by deleting the 'azurerm_log_analytics_linked_service' resource. All other fields are modifiable while the workspace is linked to a cluster."
  type        = map(any)
  default     = null
}
