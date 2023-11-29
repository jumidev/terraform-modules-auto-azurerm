# azurerm_log_analytics_workspace

Manages a Log Analytics (formally Operational Insights) Workspace.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Log Analytics Workspace. Workspace name should include 4-63 letters, digits or '-'. The '-' shouldn't be the first or the last symbol. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Log Analytics workspace is created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **allow_resource_only_permissions** | bool | False | `True`  |  -  | Specifies if the log Analytics Workspace allow users accessing to data associated with resources they have permission to view, without permission to workspace. Defaults to `true`. | 
| **local_authentication_disabled** | bool | False | `False`  |  -  | Specifies if the log Analytics workspace should enforce authentication using Azure AD. Defaults to `false`. | 
| **sku** | string | False | `PerGB2018`  |  `Free`, `PerNode`, `Premium`, `Standard`, `Standalone`, `Unlimited`, `CapacityReservation`, `PerGB2018`, `2018-04-03`  | Specifies the SKU of the Log Analytics Workspace. Possible values are `Free`, `PerNode`, `Premium`, `Standard`, `Standalone`, `Unlimited`, `CapacityReservation`, and `PerGB2018` (new SKU as of `2018-04-03`). Defaults to `PerGB2018`. | 
| **retention_in_days** | string | False | -  |  -  | The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730. | 
| **daily_quota_gb** | int | False | -  |  -  | The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted. | 
| **cmk_for_query_forced** | string | False | -  |  -  | Is Customer Managed Storage mandatory for query management? | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **internet_ingestion_enabled** | bool | False | `True`  |  -  | Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to `true`. | 
| **internet_query_enabled** | bool | False | `True`  |  -  | Should the Log Analytics Workspace support querying over the Public Internet? Defaults to `true`. | 
| **reservation_capacity_in_gb_per_day** | string | False | -  |  `100`, `200`, `300`, `400`, `500`, `1000`, `2000`, `5000`  | The capacity reservation level in GB for this workspace. Possible values are `100`, `200`, `300`, `400`, `500`, `1000`, `2000` and `5000`. | 
| **data_collection_rule_id** | string | False | -  |  -  | The ID of the Data Collection Rule to use for this workspace. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

# azurerm_virtual_desktop_workspace_application_group_association

Manages a Virtual Desktop Workspace Application Group Association.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **workspace_id** | string | False | -  |  -  | The resource ID for the Virtual Desktop Workspace. Changing this forces a new resource to be created. | 
| **application_group_id** | string | False | -  |  -  | The resource ID for the Virtual Desktop Application Group. Changing this forces a new resource to be created. | 

