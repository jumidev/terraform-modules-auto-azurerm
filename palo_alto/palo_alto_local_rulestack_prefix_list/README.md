# azurerm_palo_alto_local_rulestack_prefix_list

Manages a Palo Alto Local Rulestack Prefix List.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name which should be used for this Palo Alto Local Rulestack Prefix List. | 
| **var.rulestack_id** | string | True | -  |  -  | The ID of the Local Rulestack on which to create this Prefix List. Changing this forces a new Palo Alto Local Rulestack Prefix List to be created. | 
| **var.prefix_list** | string | True | -  |  -  | Specifies a list of Prefixes. | 
| **var.audit_comment** | string | False | -  |  -  | The comment for Audit purposes. | 
| **var.description** | string | False | -  |  -  | The description for the Prefix List. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **rulestack_id** | string  | - | 
| **prefix_list** | string  | - | 
| **audit_comment** | string  | - | 
| **description** | string  | - | 
| **id** | string  | The ID of the Palo Alto Local Rulestack Prefix List. | 