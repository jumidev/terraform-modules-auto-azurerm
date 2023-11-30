# azurerm_logic_app_integration_account_partner

Manages a Logic App Integration Account Partner.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logic_app/logic_app_integration_account_partner" 
}

inputs = {
   name = "name of logic_app_integration_account_partner" 
   resource_group_name = "${resource_group}" 
   integration_account_name = "integration_account_name of logic_app_integration_account_partner" 
   business_identity = "business_identity of logic_app_integration_account_partner" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Logic App Integration Account Partner. Changing this forces a new Logic App Integration Account Partner to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Logic App Integration Account Partner should exist. Changing this forces a new Logic App Integration Account Partner to be created. | 
| **var.integration_account_name** | string | True | The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Partner to be created. | 
| **var.business_identity** | block | True | A `business_identity` block. | 
| **var.metadata** | string | False | A JSON mapping of any Metadata for this Logic App Integration Account Partner. | 

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
