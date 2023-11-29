# azurerm_logic_app_integration_account_agreement

Manages a Logic App Integration Account Agreement.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Logic App Integration Account Agreement. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group where the Logic App Integration Account Agreement should exist. Changing this forces a new resource to be created. | 
| **var.integration_account_name** | string | True | -  |  The name of the Logic App Integration Account. Changing this forces a new resource to be created. | 
| **var.agreement_type** | string | True | `AS2`, `X12`, `Edifact`  |  The type of the Logic App Integration Account Agreement. Possible values are `AS2`, `X12` and `Edifact`. | 
| **var.content** | string | True | -  |  The content of the Logic App Integration Account Agreement. | 
| **var.guest_identity** | block | True | -  |  A `guest_identity` block. | 
| **var.guest_partner_name** | string | True | -  |  The name of the guest Logic App Integration Account Partner. | 
| **var.host_identity** | block | True | -  |  A `host_identity` block. | 
| **var.host_partner_name** | string | True | -  |  The name of the host Logic App Integration Account Partner. | 
| **var.metadata** | string | False | -  |  The metadata of the Logic App Integration Account Agreement. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **integration_account_name** | string  | - | 
| **agreement_type** | string  | - | 
| **content** | string  | - | 
| **guest_identity** | block  | - | 
| **guest_partner_name** | string  | - | 
| **host_identity** | block  | - | 
| **host_partner_name** | string  | - | 
| **metadata** | string  | - | 
| **id** | string  | The ID of the Logic App Integration Account Agreement. | 