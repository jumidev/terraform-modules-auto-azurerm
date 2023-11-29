# azurerm_logic_app_integration_account_batch_configuration

Manages a Logic App Integration Account Batch Configuration.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Logic App Integration Account Batch Configuration. Only Alphanumeric characters allowed. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Logic App Integration Account Batch Configuration should exist. Changing this forces a new resource to be created. | 
| **var.integration_account_name** | string | True | -  |  -  | The name of the Logic App Integration Account. Changing this forces a new resource to be created. | 
| **var.batch_group_name** | string | True | -  |  -  | The batch group name of the Logic App Integration Batch Configuration. Changing this forces a new resource to be created. | 
| **var.release_criteria** | block | True | -  |  -  | A `release_criteria` block, which is used to select the criteria to meet before processing each batch. | 
| **var.metadata** | string | False | -  |  -  | A JSON mapping of any Metadata for this Logic App Integration Account Batch Configuration. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **integration_account_name** | string  | - | 
| **batch_group_name** | string  | - | 
| **release_criteria** | block  | - | 
| **metadata** | string  | - | 
| **id** | string  | The ID of the Logic App Integration Account Batch Configuration. | 