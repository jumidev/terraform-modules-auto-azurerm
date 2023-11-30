# azurerm_palo_alto_local_rulestack_certificate

Manages a Palo Alto Networks Rulestack Certificate.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "palo_alto/palo_alto_local_rulestack_certificate" 
}

inputs = {
   name = "name of palo_alto_local_rulestack_certificate" 
   rulestack_id = "rulestack_id of palo_alto_local_rulestack_certificate" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Palo Alto Networks Rulestack Certificate. | 
| **var.rulestack_id** | string | True | -  |  The ID of the TODO. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created. | 
| **var.key_vault_certificate_id** | string | False | -  |  The `versionles_id` of the Key Vault Certificate to use. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created. | 
| **var.self_signed** | bool | False | `False`  |  Should a Self Signed Certificate be used. Defaults to `false`. Changing this forces a new Palo Alto Networks Rulestack Certificate to be created. | 
| **var.audit_comment** | string | False | -  |  The comment for Audit purposes. | 
| **var.description** | string | False | -  |  The description for the Certificate. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Palo Alto Networks Rulestack Certificate. | 

Additionally, all variables are provided as outputs.
