# azurerm_logic_app_integration_account_certificate

Manages a Logic App Integration Account Certificate.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Logic App Integration Account Certificate. Changing this forces a new Logic App Integration Account Certificate to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Logic App Integration Account Certificate should exist. Changing this forces a new Logic App Integration Account Certificate to be created. | 
| **integration_account_name** | string | True | -  |  -  | The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Certificate to be created. | 
| **key_vault_key** | block | False | -  |  -  | A `key_vault_key` block. | 
| **metadata** | string | False | -  |  -  | A JSON mapping of any Metadata for this Logic App Integration Account Certificate. | 
| **public_certificate** | string | False | -  |  -  | The public certificate for the Logic App Integration Account Certificate. | 

