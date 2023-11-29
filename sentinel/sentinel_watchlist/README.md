# azurerm_sentinel_watchlist

Manages a Sentinel Watchlist.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created. | 
| **log_analytics_workspace_id** | string | True | -  |  -  | The ID of the Log Analytics Workspace where this Sentinel Watchlist resides in. Changing this forces a new Sentinel Watchlist to be created. | 
| **display_name** | string | True | -  |  -  | The display name of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created. | 
| **item_search_key** | string | True | -  |  -  | The key used to optimize query performance when using Watchlist for joins with other data. Changing this forces a new Sentinel Watchlist to be created. | 
| **default_duration** | string | False | -  |  -  | The default duration in ISO8601 duration form of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created. | 
| **description** | string | False | -  |  -  | The description of this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created. | 
| **labels** | string | False | -  |  -  | Specifies a list of labels related to this Sentinel Watchlist. Changing this forces a new Sentinel Watchlist to be created. | 

