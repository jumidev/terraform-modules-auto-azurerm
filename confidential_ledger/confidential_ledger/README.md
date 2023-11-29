# azurerm_confidential_ledger

Manages a Confidential Ledger.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | Specifies the name of the Confidential Ledger. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Confidential Ledger exists. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the Confidential Ledger exists. Changing this forces a new resource to be created. | 
| **azuread_based_service_principal** | block | True | -  |  -  | A list of `azuread_based_service_principal` blocks. | 
| **ledger_type** | string | True | -  |  `Private`, `Public`  | Specifies the type of Confidential Ledger. Possible values are `Private` and `Public`. Changing this forces a new resource to be created. | 
| **certificate_based_security_principal** | block | False | -  |  -  | A list of `certificate_based_security_principal` blocks. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the Confidential Ledger. | 

