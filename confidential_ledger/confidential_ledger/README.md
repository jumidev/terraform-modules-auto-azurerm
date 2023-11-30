# azurerm_confidential_ledger

Manages a Confidential Ledger.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "confidential_ledger/confidential_ledger" 
}

inputs = {
   name = "name of confidential_ledger" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   azuread_based_service_principal = "azuread_based_service_principal of confidential_ledger" 
   ledger_type = "ledger_type of confidential_ledger" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

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

### `azuread_based_service_principal` block structure

> `ledger_role_name` (string): (REQUIRED) Specifies the Ledger Role to grant this AzureAD Service Principal. Possible values are 'Administrator', 'Contributor' and 'Reader'.\
> `principal_id` (string): (REQUIRED) Specifies the Principal ID of the AzureAD Service Principal.\
> `tenant_id` (string): (REQUIRED) Specifies the Tenant ID for this AzureAD Service Principal.\

### `certificate_based_security_principal` block structure

> `ledger_role_name` (string): (REQUIRED) Specifies the Ledger Role to grant this Certificate Security Principal. Possible values are 'Administrator', 'Contributor' and 'Reader'.\
> `pem_public_key` (string): (REQUIRED) The public key, in PEM format, of the certificate used by this identity to authenticate with the Confidential Ledger.\



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of this Confidential Ledger. | 
| **identity_service_endpoint** | string | No  | The Identity Service Endpoint for this Confidential Ledger. | 
| **ledger_endpoint** | string | No  | The Endpoint for this Confidential Ledger. | 

Additionally, all variables are provided as outputs.
