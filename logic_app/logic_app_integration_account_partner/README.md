# azurerm_logic_app_integration_account_partner

Manages a Logic App Integration Account Partner.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Logic App Integration Account Partner. Changing this forces a new Logic App Integration Account Partner to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Logic App Integration Account Partner should exist. Changing this forces a new Logic App Integration Account Partner to be created. | 
| **var.integration_account_name** | string | True | The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Partner to be created. | 
| **var.business_identity** | block | True | A `business_identity` block. | 
| **var.metadata** | string | False | A JSON mapping of any Metadata for this Logic App Integration Account Partner. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **integration_account_name** | string  | - | 
| **business_identity** | block  | - | 
| **metadata** | string  | - | 
| **id** | string  | The ID of the Logic App Integration Account Partner. | 