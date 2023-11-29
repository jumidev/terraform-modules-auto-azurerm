# azurerm_logic_app_integration_account_certificate

Manages a Logic App Integration Account Certificate.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Logic App Integration Account Certificate. Changing this forces a new Logic App Integration Account Certificate to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Logic App Integration Account Certificate should exist. Changing this forces a new Logic App Integration Account Certificate to be created. | 
| **var.integration_account_name** | string | True | The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Certificate to be created. | 
| **var.key_vault_key** | block | False | A `key_vault_key` block. | 
| **var.metadata** | string | False | A JSON mapping of any Metadata for this Logic App Integration Account Certificate. | 
| **var.public_certificate** | string | False | The public certificate for the Logic App Integration Account Certificate. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **integration_account_name** | string  | - | 
| **key_vault_key** | block  | - | 
| **metadata** | string  | - | 
| **public_certificate** | string  | - | 
| **id** | string  | The ID of the Logic App Integration Account Certificate. | 