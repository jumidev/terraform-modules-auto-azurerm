# azurerm_key_vault_certificate_contacts

Manages Key Vault Certificate Contacts.## Disclaimers~> **Note:** It's possible to define Key Vault Certificate Contacts both within [the `azurerm_key_vault` resource](key_vault.html) via the `contact` block and by using [the `azurerm_key_vault_certificate_contacts` resource](key_vault_certificate_contacts.html). However it's not possible to use both methods to manage Certificate Contacts within a KeyVault, since there'll be conflicts.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **key_vault_id** | string | True | -  |  -  | The ID of the Key Vault. Changing this forces a new resource to be created. | 
| **contact** | block | True | -  |  -  | One or more `contact` blocks. | 

