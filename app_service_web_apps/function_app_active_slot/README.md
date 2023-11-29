# azurerm_function_app_active_slot

Manages a Function App Active Slot.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **slot_id** | string | True | -  |  -  | The ID of the Slot to swap with `Production`. | 
| **overwrite_network_config** | bool | False | `True`  |  -  | The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`. Changing this forces a new resource to be created. | 

