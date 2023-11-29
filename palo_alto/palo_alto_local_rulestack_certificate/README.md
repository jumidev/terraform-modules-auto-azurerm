# azurerm_palo_alto_local_rulestack_certificate

Manages a Palo Alto Networks Rulestack Certificate.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Palo Alto Networks Rulestack Certificate. | 
| **var.rulestack_id** | string | True | -  |  -  | The ID of the TODO. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created. | 
| **var.key_vault_certificate_id** | string | False | -  |  -  | The `versionles_id` of the Key Vault Certificate to use. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created. | 
| **var.self_signed** | bool | False | `False`  |  -  | Should a Self Signed Certificate be used. Defaults to `false`. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created. | 
| **var.audit_comment** | string | False | -  |  -  | The comment for Audit purposes. | 
| **var.description** | string | False | -  |  -  | The description for the Certificate. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **rulestack_id** | string  | - | 
| **key_vault_certificate_id** | string  | - | 
| **self_signed** | bool  | - | 
| **audit_comment** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the Palo Alto Networks Rulestack Certificate. | 