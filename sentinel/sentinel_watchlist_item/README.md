# azurerm_sentinel_watchlist_item

Manages a Sentinel Watchlist Item.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.watchlist_id** | string | True | The ID of the Sentinel Watchlist that this Item resides in. Changing this forces a new Sentinel Watchlist Item to be created. | 
| **var.properties** | string | True | The key value pairs of the Sentinel Watchlist Item. | 
| **var.name** | string | False | The name in UUID format which should be used for this Sentinel Watchlist Item. Changing this forces a new Sentinel Watchlist Item to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **watchlist_id** | string  | - | 
| **properties** | string  | - | 
| **name** | string  | - | 
| **id** | string  | The ID of the Sentinel Watchlist Item. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "sentinel/sentinel_watchlist_item" 
}

inputs = {
   watchlist_id = "watchlist_id of sentinel_watchlist_item" 
   properties = "properties of sentinel_watchlist_item" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```