# azurerm_log_analytics_workspace

Manages a Log Analytics (formally Operational Insights) Workspace.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | Specifies the name of the Log Analytics Workspace. Workspace name should include 4-63 letters, digits or '-'. The '-' shouldn't be the first or the last symbol. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the resource group in which the Log Analytics workspace is created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.allow_resource_only_permissions** | bool | False | `True`  |  -  | Specifies if the log Analytics Workspace allow users accessing to data associated with resources they have permission to view, without permission to workspace. Defaults to `true`. | 
| **var.local_authentication_disabled** | bool | False | `False`  |  -  | Specifies if the log Analytics workspace should enforce authentication using Azure AD. Defaults to `false`. | 
| **var.sku** | string | False | `PerGB2018`  |  `Free`, `PerNode`, `Premium`, `Standard`, `Standalone`, `Unlimited`, `CapacityReservation`, `PerGB2018`, `2018-04-03`  | Specifies the SKU of the Log Analytics Workspace. Possible values are `Free`, `PerNode`, `Premium`, `Standard`, `Standalone`, `Unlimited`, `CapacityReservation`, and `PerGB2018` (new SKU as of `2018-04-03`). Defaults to `PerGB2018`. | 
| **var.retention_in_days** | string | False | -  |  -  | The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730. | 
| **var.daily_quota_gb** | int | False | -  |  -  | The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted. | 
| **var.cmk_for_query_forced** | string | False | -  |  -  | Is Customer Managed Storage mandatory for query management? | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.internet_ingestion_enabled** | bool | False | `True`  |  -  | Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to `true`. | 
| **var.internet_query_enabled** | bool | False | `True`  |  -  | Should the Log Analytics Workspace support querying over the Public Internet? Defaults to `true`. | 
| **var.reservation_capacity_in_gb_per_day** | string | False | -  |  `100`, `200`, `300`, `400`, `500`, `1000`, `2000`, `5000`  | The capacity reservation level in GB for this workspace. Possible values are `100`, `200`, `300`, `400`, `500`, `1000`, `2000` and `5000`. | 
| **var.data_collection_rule_id** | string | False | -  |  -  | The ID of the Data Collection Rule to use for this workspace. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 


### 1 optional associated resource:

| variable | reference | Description |
| -------- | --------- | ----------- |
| **var.application_group_id** | **virtual_desktop_workspace_application_group_association** | Manages a Virtual Desktop Workspace Application Group Association. | 

## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **allow_resource_only_permissions** | bool  | - | 
| **local_authentication_disabled** | bool  | - | 
| **sku** | string  | - | 
| **retention_in_days** | string  | - | 
| **daily_quota_gb** | int  | - | 
| **cmk_for_query_forced** | string  | - | 
| **identity** | block  | - | 
| **internet_ingestion_enabled** | bool  | - | 
| **internet_query_enabled** | bool  | - | 
| **reservation_capacity_in_gb_per_day** | string  | - | 
| **data_collection_rule_id** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The Log Analytics Workspace ID. | 
| **primary_shared_key** | string  | The Primary shared key for the Log Analytics Workspace. | 
| **secondary_shared_key** | string  | The Secondary shared key for the Log Analytics Workspace. | 
| **workspace_id** | string  | The Workspace (or Customer) ID for the Log Analytics Workspace. | 