# azurerm_web_app_active_slot

Manages a Web App Active Slot.

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.slot_id** | string | True | -  |  The ID of the Slot to swap with `Production`. | 
| **var.overwrite_network_config** | bool | False | `True`  |  The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **slot_id** | string  | - | 
| **overwrite_network_config** | bool  | - | 
| **id** | string  | The ID of the Web App Active Slot | 
| **last_successful_swap** | string  | The timestamp of the last successful swap with `Production`. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/web_app_active_slot" 
}

inputs = {
   slot_id = "slot_id of web_app_active_slot" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```