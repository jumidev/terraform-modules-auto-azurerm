# azurerm_key_vault_certificate_contacts

Manages Key Vault Certificate Contacts.## Disclaimers~> **Note:** It's possible to define Key Vault Certificate Contacts both within [the `azurerm_key_vault` resource](key_vault.html) via the `contact` block and by using [the `azurerm_key_vault_certificate_contacts` resource](key_vault_certificate_contacts.html). However it's not possible to use both methods to manage Certificate Contacts within a KeyVault, since there'll be conflicts.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "key_vault/key_vault_certificate_contacts" 
}

inputs = {
   key_vault_id = "key_vault_id of key_vault_certificate_contacts" 
   contact = {
      example_contact = {
         email = "..."   
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
| **var.key_vault_id** | string |  The ID of the Key Vault. Changing this forces a new resource to be created. | 
| **var.contact** | [block](#contact-block-structure) |  One or more `contact` blocks. | 

### `contact` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `email` | string | Yes | - | E-mail address of the contact. |
| `phone` | int | No | - | Phone number of the contact. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Key Vault Certificate Contacts. | 

Additionally, all variables are provided as outputs.
