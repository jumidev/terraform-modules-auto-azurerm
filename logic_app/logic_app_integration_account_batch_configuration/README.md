# azurerm_logic_app_integration_account_batch_configuration

Manages a Logic App Integration Account Batch Configuration.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logic_app/logic_app_integration_account_batch_configuration" 
}

inputs = {
   name = "name of logic_app_integration_account_batch_configuration" 
   resource_group_name = "${resource_group}" 
   integration_account_name = "integration_account_name of logic_app_integration_account_batch_configuration" 
   batch_group_name = "batch_group_name of logic_app_integration_account_batch_configuration" 
   release_criteria = "release_criteria of logic_app_integration_account_batch_configuration" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Logic App Integration Account Batch Configuration. Only Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Logic App Integration Account Batch Configuration should exist. Changing this forces a new resource to be created. | 
| **var.integration_account_name** | string | True | The name of the Logic App Integration Account. Changing this forces a new resource to be created. | 
| **var.batch_group_name** | string | True | The batch group name of the Logic App Integration Batch Configuration. Changing this forces a new resource to be created. | 
| **var.release_criteria** | block | True | A `release_criteria` block, which is used to select the criteria to meet before processing each batch. | 
| **var.metadata** | string | False | A JSON mapping of any Metadata for this Logic App Integration Account Batch Configuration. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Logic App Integration Account Batch Configuration. | 

Additionally, all variables are provided as outputs.
