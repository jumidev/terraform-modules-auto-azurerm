# azurerm_function_app_active_slot

Manages a Function App Active Slot.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "app_service_web_apps/function_app_active_slot" 
}

inputs = {
   slot_id = "slot_id of function_app_active_slot" 
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
| **var.slot_id** | string |  The ID of the Slot to swap with `Production`. | 

## Optional Variables

| Name | Type |  Default  |  Description |
| ---- | --------- |  ----------- | ----------- |
| **var.overwrite_network_config** | bool |  `True`  |  The swap action should overwrite the Production slot's network configuration with the configuration from this slot. Defaults to `true`. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Function App Active Slot | 
| **last_successful_swap** | string | No  | The timestamp of the last successful swap with `Production` | 

Additionally, all variables are provided as outputs.
