# azurerm_logic_app_integration_account_agreement

Manages a Logic App Integration Account Agreement.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "logic_app/logic_app_integration_account_agreement"   
}

inputs = {
   name = "The name which should be used for this Logic App Integration Account Agreement..."   
   resource_group_name = "${resource_group}"   
   integration_account_name = "The name of the Logic App Integration Account"   
   agreement_type = "The type of the Logic App Integration Account Agreement..."   
   content = "The content of the Logic App Integration Account Agreement..."   
   guest_identity = {
      qualifier = "..."      
      value = "..."      
   }
   
   guest_partner_name = "The name of the guest Logic App Integration Account Partner..."   
   host_identity = {
      qualifier = "..."      
      value = "..."      
   }
   
   host_partner_name = "The name of the host Logic App Integration Account Partner..."   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **name** | string |  -  |  The name which should be used for this Logic App Integration Account Agreement. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the Resource Group where the Logic App Integration Account Agreement should exist. Changing this forces a new resource to be created. | 
| **integration_account_name** | string |  -  |  The name of the Logic App Integration Account. Changing this forces a new resource to be created. | 
| **agreement_type** | string |  `AS2`, `X12`, `Edifact`  |  The type of the Logic App Integration Account Agreement. Possible values are `AS2`, `X12` and `Edifact`. | 
| **content** | string |  -  |  The content of the Logic App Integration Account Agreement. | 
| **guest_identity** | [block](#guest_identity-block-structure) |  -  |  A `guest_identity` block. | 
| **guest_partner_name** | string |  -  |  The name of the guest Logic App Integration Account Partner. | 
| **host_identity** | [block](#host_identity-block-structure) |  -  |  A `host_identity` block. | 
| **host_partner_name** | string |  -  |  The name of the host Logic App Integration Account Partner. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **metadata** | string |  The metadata of the Logic App Integration Account Agreement. | 

### `guest_identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `qualifier` | string | Yes | - | The authenticating body that provides unique guest identities to organizations. |
| `value` | string | Yes | - | The value that identifies the documents that your logic apps receive. |

### `host_identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `qualifier` | string | Yes | - | The authenticating body that provides unique host identities to organizations. |
| `value` | string | Yes | - | The value that identifies the documents that your logic apps receive. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Logic App Integration Account Agreement. | 

Additionally, all variables are provided as outputs.
