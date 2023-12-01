# azurerm_sentinel_watchlist_item

Manages a Sentinel Watchlist Item.

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **watchlist_id** | string |  The ID of the Sentinel Watchlist that this Item resides in. Changing this forces a new Sentinel Watchlist Item to be created. | 
| **properties** | string |  The key value pairs of the Sentinel Watchlist Item. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name in UUID format which should be used for this Sentinel Watchlist Item. Changing this forces a new Sentinel Watchlist Item to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Sentinel Watchlist Item. | 

Additionally, all variables are provided as outputs.
