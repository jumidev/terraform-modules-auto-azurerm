# azurerm_sentinel_watchlist

Manages a Sentinel Watchlist.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created. | 
| **var.log_analytics_workspace_id** | string | True | The ID of the Log Analytics Workspace where this Sentinel Watchlist resides in. Changing this forces a new Sentinel Watchlist to be created. | 
| **var.display_name** | string | True | The display name of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created. | 
| **var.item_search_key** | string | True | The key used to optimize query performance when using Watchlist for joins with other data. Changing this forces a new Sentinel Watchlist to be created. | 
| **var.default_duration** | string | False | The default duration in ISO8601 duration form of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created. | 
| **var.description** | string | False | The description of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created. | 
| **var.labels** | string | False | Specifies a list of labels related to this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **log_analytics_workspace_id** | string  | - | 
| **display_name** | string  | - | 
| **item_search_key** | string  | - | 
| **default_duration** | string  | - | 
| **description** | string  | - | 
| **labels** | string  | - | 
| **id** | string  | The ID of the Sentinel Watchlist. | 