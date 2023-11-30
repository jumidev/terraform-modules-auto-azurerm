# azurerm_key_vault_certificate_contacts

Manages Key Vault Certificate Contacts.## Disclaimers~> **Note:** It's possible to define Key Vault Certificate Contacts both within [the `azurerm_key_vault` resource](key_vault.html) via the `contact` block and by using [the `azurerm_key_vault_certificate_contacts` resource](key_vault_certificate_contacts.html). However it's not possible to use both methods to manage Certificate Contacts within a KeyVault, since there'll be conflicts.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "key_vault/key_vault_certificate_contacts" 
}

inputs = {
   key_vault_id = "key_vault_id of key_vault_certificate_contacts" 
   contact = "contact of key_vault_certificate_contacts" 
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
| **var.key_vault_id** | string | True | The ID of the Key Vault. Changing this forces a new resource to be created. | 
| **var.contact** | block | True | One or more `contact` blocks. | 

### `contact` block structure

> `email` (string): (REQUIRED) E-mail address of the contact.
> `name` (string): Name of the contact.
> `phone` (int): Phone number of the contact.



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Key Vault Certificate Contacts. | 

Additionally, all variables are provided as outputs.
