# azurerm_palo_alto_local_rulestack_prefix_list

Manages a Palo Alto Local Rulestack Prefix List.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name which should be used for this Palo Alto Local Rulestack Prefix List. | 
| **rulestack_id** | string | True | -  |  -  | The ID of the Local Rulestack on which to create this Prefix List. Changing this forces a new Palo Alto Local Rulestack Prefix List to be created. | 
| **prefix_list** | string | True | -  |  -  | Specifies a list of Prefixes. | 
| **audit_comment** | string | False | -  |  -  | The comment for Audit purposes. | 
| **description** | string | False | -  |  -  | The description for the Prefix List. | 

