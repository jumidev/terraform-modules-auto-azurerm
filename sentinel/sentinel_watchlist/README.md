# azurerm_sentinel_watchlist

Manages a Sentinel Watchlist.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_watchlist" 
}

inputs = {
   name = "name of sentinel_watchlist" 
   log_analytics_workspace_id = "log_analytics_workspace_id of sentinel_watchlist" 
   display_name = "display_name of sentinel_watchlist" 
   item_search_key = "item_search_key of sentinel_watchlist" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created. | 
| **log_analytics_workspace_id** | string |  The ID of the Log Analytics Workspace where this Sentinel Watchlist resides in. Changing this forces a new Sentinel Watchlist to be created. | 
| **display_name** | string |  The display name of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created. | 
| **item_search_key** | string |  The key used to optimize query performance when using Watchlist for joins with other data. Changing this forces a new Sentinel Watchlist to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **default_duration** | string |  The default duration in ISO8601 duration form of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created. | 
| **description** | string |  The description of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created. | 
| **labels** | string |  Specifies a list of labels related to this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Sentinel Watchlist. | 

Additionally, all variables are provided as outputs.
