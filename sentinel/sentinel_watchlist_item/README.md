# azurerm_sentinel_watchlist_item

Manages a Sentinel Watchlist Item.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **watchlist_id** | string | True | -  |  -  | The ID of the Sentinel Watchlist that this Item resides in. Changing this forces a new Sentinel Watchlist Item to be created. | 
| **properties** | string | True | -  |  -  | The key value pairs of the Sentinel Watchlist Item. | 
| **name** | string | False | -  |  -  | The name in UUID format which should be used for this Sentinel Watchlist Item. Changing this forces a new Sentinel Watchlist Item to be created. | 

