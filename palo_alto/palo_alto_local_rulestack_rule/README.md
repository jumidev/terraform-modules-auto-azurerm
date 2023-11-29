# azurerm_palo_alto_local_rulestack_rule

Manages a Palo Alto Local Rulestack Rule.

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.applications** | string | True | -  |  -  |  Specifies a list of Applications. | 
| **var.rulestack_id** | string | True | -  |  -  |  The ID of the Local Rulestack in which to create this Rule. Changing this forces a new Palo Alto Local Rulestack Rule to be created. | 
| **var.priority** | string | True | -  |  -  |  The Priority of this rule. Rules are executed in numerical order. Changing this forces a new Palo Alto Local Rulestack Rule to be created. | 
| **var.action** | string | True | -  |  `Allow`, `DenyResetBoth`, `DenyResetServer`, `DenySilent`  |  The action to take on the rule being triggered. Possible values are `Allow`, `DenyResetBoth`, `DenyResetServer` and `DenySilent`. | 
| **var.name** | string | True | -  |  -  |  The name which should be used for this Palo Alto Local Rulestack Rule. | 
| **var.destination** | block | True | -  |  -  |  One or more `destination` blocks. | 
| **var.source** | block | True | -  |  -  |  One or more `source` blocks. | 
| **var.audit_comment** | string | False | -  |  -  |  The comment for Audit purposes. | 
| **var.category** | block | False | -  |  -  |  A `category` block. | 
| **var.decryption_rule_type** | string | False | `None`  |  `SSLInboundInspection`, `SSLOutboundInspection`, `None`  |  The type of Decryption to perform on the rule. Possible values include `SSLInboundInspection`, `SSLOutboundInspection`, and `None`. Defaults to `None`. | 
| **var.description** | string | False | -  |  -  |  The description for the rule. | 
| **var.enabled** | bool | False | `True`  |  -  |  Should this Rule be enabled? Defaults to `true`. | 
| **var.inspection_certificate_id** | string | False | -  |  -  |  The ID of the certificate for inbound inspection. Only valid when `decryption_rule_type` is set to `SSLInboundInspection`. | 
| **var.logging_enabled** | bool | False | `False`  |  -  |  Should Logging be enabled? Defaults to `false`. | 
| **var.negate_destination** | bool | False | `False`  |  -  |  Should the inverse of the Destination configuration be used. Defaults to `false`. | 
| **var.negate_source** | bool | False | `False`  |  -  |  Should the inverse of the Source configuration be used. Defaults to `false`. | 
| **var.protocol** | string | False | `application-default`  |  -  |  The Protocol and port to use in the form `[protocol]:[port_number]` e.g. `TCP:8080` or `UDP:53`. Conflicts with `protocol_ports`. Defaults to `application-default`. | 
| **var.protocol_ports** | string | False | -  |  -  |  Specifies a list of Protocol:Port entries. E.g. `[ "TCP:80", "UDP:5431" ]`. Conflicts with `protocol`. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to the Palo Alto Local Rulestack Rule. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **applications** | string  | - | 
| **rulestack_id** | string  | - | 
| **priority** | string  | - | 
| **action** | string  | - | 
| **name** | string  | - | 
| **destination** | block  | - | 
| **source** | block  | - | 
| **audit_comment** | string  | - | 
| **category** | block  | - | 
| **decryption_rule_type** | string  | - | 
| **description** | string  | - | 
| **enabled** | bool  | - | 
| **inspection_certificate_id** | string  | - | 
| **logging_enabled** | bool  | - | 
| **negate_destination** | bool  | - | 
| **negate_source** | bool  | - | 
| **protocol** | string  | - | 
| **protocol_ports** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Palo Alto Local Rulestack Rule. | 