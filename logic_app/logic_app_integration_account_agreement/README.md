# azurerm_logic_app_integration_account_agreement

Manages a Logic App Integration Account Agreement.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Logic App Integration Account Agreement. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Logic App Integration Account Agreement should exist. Changing this forces a new resource to be created. | 
| **integration_account_name** | string | True | -  |  -  | The name of the Logic App Integration Account. Changing this forces a new resource to be created. | 
| **agreement_type** | string | True | -  |  `AS2`, `X12`, `Edifact`  | The type of the Logic App Integration Account Agreement. Possible values are `AS2`, `X12` and `Edifact`. | 
| **content** | string | True | -  |  -  | The content of the Logic App Integration Account Agreement. | 
| **guest_identity** | block | True | -  |  -  | A `guest_identity` block. | 
| **guest_partner_name** | string | True | -  |  -  | The name of the guest Logic App Integration Account Partner. | 
| **host_identity** | block | True | -  |  -  | A `host_identity` block. | 
| **host_partner_name** | string | True | -  |  -  | The name of the host Logic App Integration Account Partner. | 
| **metadata** | string | False | -  |  -  | The metadata of the Logic App Integration Account Agreement. | 

