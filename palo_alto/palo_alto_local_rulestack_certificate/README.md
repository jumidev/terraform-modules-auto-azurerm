# azurerm_palo_alto_local_rulestack_certificate

Manages a Palo Alto Networks Rulestack Certificate.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Palo Alto Networks Rulestack Certificate. | 
| **rulestack_id** | string | True | -  |  -  | The ID of the TODO. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created. | 
| **key_vault_certificate_id** | string | False | -  |  -  | The `versionles_id` of the Key Vault Certificate to use. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created. | 
| **self_signed** | bool | False | `False`  |  -  | Should a Self Signed Certificate be used. Defaults to `false`. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created. | 
| **audit_comment** | string | False | -  |  -  | The comment for Audit purposes. | 
| **description** | string | False | -  |  -  | The description for the Certificate. | 

