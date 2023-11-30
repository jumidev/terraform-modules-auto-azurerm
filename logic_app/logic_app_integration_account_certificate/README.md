# azurerm_logic_app_integration_account_certificate

Manages a Logic App Integration Account Certificate.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "logic_app/logic_app_integration_account_certificate" 
}

inputs = {
   name = "name of logic_app_integration_account_certificate" 
   resource_group_name = "${resource_group}" 
   integration_account_name = "integration_account_name of logic_app_integration_account_certificate" 
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
| **var.name** | string | True | The name which should be used for this Logic App Integration Account Certificate. Changing this forces a new Logic App Integration Account Certificate to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Logic App Integration Account Certificate should exist. Changing this forces a new Logic App Integration Account Certificate to be created. | 
| **var.integration_account_name** | string | True | The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Certificate to be created. | 
| **var.key_vault_key** | block | False | A `key_vault_key` block. | 
| **var.metadata** | string | False | A JSON mapping of any Metadata for this Logic App Integration Account Certificate. | 
| **var.public_certificate** | string | False | The public certificate for the Logic App Integration Account Certificate. | 

### `key_vault_key` block structure

>`key_name` (string): (REQUIRED) The name of Key Vault Key.
>`key_vault_id` (string): (REQUIRED) The ID of the Key Vault.
>`key_version` (string): The version of Key Vault Key.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Logic App Integration Account Certificate. | 

Additionally, all variables are provided as outputs.
