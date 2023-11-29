# azurerm_palo_alto_local_rulestack_fqdn_list

Manages a Palo Alto Local Rulestack FQDN List.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name which should be used for this Palo Alto Local Rulestack FQDN List. | 
| **var.rulestack_id** | string | True | The ID of the TODO. Changing this forces a new Palo Alto Local Rulestack FQDN List to be created. | 
| **var.fully_qualified_domain_names** | string | True | Specifies a list of Fully Qualified Domain Names. | 
| **var.audit_comment** | string | False | The comment for Audit purposes. | 
| **var.description** | string | False | The description for the FQDN List. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **rulestack_id** | string  | - | 
| **fully_qualified_domain_names** | string  | - | 
| **audit_comment** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the Palo Alto Local Rulestack FQDN List. | 