# azurerm_logic_app_integration_account

Manages a Logic App Integration Account.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "logic_app/logic_app_integration_account"   
}

inputs = {
   name = "The name which should be used for this Logic App Integration Account..."   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   sku_name = "The SKU name of the Logic App Integration Account"   
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
| **name** | string |  The name which should be used for this Logic App Integration Account. Changing this forces a new Logic App Integration Account to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Logic App Integration Account should exist. Changing this forces a new Logic App Integration Account to be created. | 
| **location** | string |  The Azure Region where the Logic App Integration Account should exist. Changing this forces a new Logic App Integration Account to be created. | 
| **sku_name** | string |  The SKU name of the Logic App Integration Account. Possible Values are `Basic`, `Free` and `Standard`. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **integration_service_environment_id** | string |  The resource ID of the Integration Service Environment. Changing this forces a new Logic App Integration Account to be created. | 
| **tags** | map |  A mapping of tags which should be assigned to the Logic App Integration Account. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Logic App Integration Account. | 

Additionally, all variables are provided as outputs.
