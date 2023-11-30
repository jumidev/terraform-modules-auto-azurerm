# azurerm_logic_app_integration_account_agreement

Manages a Logic App Integration Account Agreement.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logic_app/logic_app_integration_account_agreement" 
}

inputs = {
   name = "name of logic_app_integration_account_agreement" 
   resource_group_name = "${resource_group}" 
   integration_account_name = "integration_account_name of logic_app_integration_account_agreement" 
   agreement_type = "agreement_type of logic_app_integration_account_agreement" 
   content = "content of logic_app_integration_account_agreement" 
   guest_identity = {
      example_guest_identity = {
         qualifier = "..."   
         value = "..."   
      }
  
   }
 
   guest_partner_name = "guest_partner_name of logic_app_integration_account_agreement" 
   host_identity = {
      example_host_identity = {
         qualifier = "..."   
         value = "..."   
      }
  
   }
 
   host_partner_name = "host_partner_name of logic_app_integration_account_agreement" 
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
| **var.name** | string |  -  |  The name which should be used for this Logic App Integration Account Agreement. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string |  -  |  The name of the Resource Group where the Logic App Integration Account Agreement should exist. Changing this forces a new resource to be created. | 
| **var.integration_account_name** | string |  -  |  The name of the Logic App Integration Account. Changing this forces a new resource to be created. | 
| **var.agreement_type** | string |  `AS2`, `X12`, `Edifact`  |  The type of the Logic App Integration Account Agreement. Possible values are `AS2`, `X12` and `Edifact`. | 
| **var.content** | string |  -  |  The content of the Logic App Integration Account Agreement. | 
| **var.guest_identity** | block |  -  |  A `guest_identity` block. | 
| **var.guest_partner_name** | string |  -  |  The name of the guest Logic App Integration Account Partner. | 
| **var.host_identity** | block |  -  |  A `host_identity` block. | 
| **var.host_partner_name** | string |  -  |  The name of the host Logic App Integration Account Partner. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.metadata** | string |  The metadata of the Logic App Integration Account Agreement. | 

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
