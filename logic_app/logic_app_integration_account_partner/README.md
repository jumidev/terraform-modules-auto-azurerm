# azurerm_logic_app_integration_account_partner

Manages a Logic App Integration Account Partner.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "logic_app/logic_app_integration_account_partner"   
}

inputs = {
   name = "name of logic_app_integration_account_partner"   
   resource_group_name = "${resource_group}"   
   integration_account_name = "integration_account_name of logic_app_integration_account_partner"   
   business_identity = {
      this_business_identity = {
         qualifier = "..."         
         value = "..."         
      }
      
   }
   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name which should be used for this Logic App Integration Account Partner. Changing this forces a new Logic App Integration Account Partner to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Logic App Integration Account Partner should exist. Changing this forces a new Logic App Integration Account Partner to be created. | 
| **integration_account_name** | string |  The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Partner to be created. | 
| **business_identity** | [block](#business_identity-block-structure) |  A `business_identity` block. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **metadata** | string |  A JSON mapping of any Metadata for this Logic App Integration Account Partner. | 

### `business_identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `qualifier` | string | Yes | - | The authenticating body that provides unique business identities to organizations. |
| `value` | string | Yes | - | The value that identifies the documents that your logic apps receive. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Logic App Integration Account Partner. | 

Additionally, all variables are provided as outputs.
