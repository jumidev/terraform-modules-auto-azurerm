# azurerm_confidential_ledger

Manages a Confidential Ledger.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  Specifies the name of the Confidential Ledger. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Confidential Ledger exists. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the supported Azure location where the Confidential Ledger exists. Changing this forces a new resource to be created. | 
| **var.azuread_based_service_principal** | block | True | -  |  A list of `azuread_based_service_principal` blocks. | 
| **var.ledger_type** | string | True | `Private`, `Public`  |  Specifies the type of Confidential Ledger. Possible values are `Private` and `Public`. Changing this forces a new resource to be created. | 
| **var.certificate_based_security_principal** | block | False | -  |  A list of `certificate_based_security_principal` blocks. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the Confidential Ledger. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **azuread_based_service_principal** | block  | - | 
| **ledger_type** | string  | - | 
| **certificate_based_security_principal** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of this Confidential Ledger. | 
| **identity_service_endpoint** | string  | The Identity Service Endpoint for this Confidential Ledger. | 
| **ledger_endpoint** | string  | The Endpoint for this Confidential Ledger. | 