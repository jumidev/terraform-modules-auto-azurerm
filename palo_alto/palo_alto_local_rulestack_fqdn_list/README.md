# azurerm_palo_alto_local_rulestack_fqdn_list

Manages a Palo Alto Local Rulestack FQDN List.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Palo Alto Local Rulestack FQDN List. | 
| **rulestack_id** | string | True | -  |  -  | The ID of the TODO. Changing this forces a new Palo Alto Local Rulestack FQDN List to be created. | 
| **fully_qualified_domain_names** | string | True | -  |  -  | Specifies a list of Fully Qualified Domain Names. | 
| **audit_comment** | string | False | -  |  -  | The comment for Audit purposes. | 
| **description** | string | False | -  |  -  | The description for the FQDN List. | 

