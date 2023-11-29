# azurerm_palo_alto_local_rulestack_rule

Manages a Palo Alto Local Rulestack Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **applications** | string | True | -  |  -  | Specifies a list of Applications. | 
| **rulestack_id** | string | True | -  |  -  | The ID of the Local Rulestack in which to create this Rule. Changing this forces a new Palo Alto Local Rulestack Rule to be created. | 
| **priority** | string | True | -  |  -  | The Priority of this rule. Rules are executed in numerical order. Changing this forces a new Palo Alto Local Rulestack Rule to be created. | 
| **action** | string | True | -  |  `Allow`, `DenyResetBoth`, `DenyResetServer`, `DenySilent`  | The action to take on the rule being triggered. Possible values are `Allow`, `DenyResetBoth`, `DenyResetServer` and `DenySilent`. | 
| **name** | string | True | -  |  -  | The name which should be used for this Palo Alto Local Rulestack Rule. | 
| **destination** | block | True | -  |  -  | One or more `destination` blocks. | 
| **source** | block | True | -  |  -  | One or more `source` blocks. | 
| **audit_comment** | string | False | -  |  -  | The comment for Audit purposes. | 
| **category** | block | False | -  |  -  | A `category` block. | 
| **decryption_rule_type** | string | False | `None`  |  `SSLInboundInspection`, `SSLOutboundInspection`, `None`  | The type of Decryption to perform on the rule. Possible values include `SSLInboundInspection`, `SSLOutboundInspection`, and `None`. Defaults to `None`. | 
| **description** | string | False | -  |  -  | The description for the rule. | 
| **enabled** | bool | False | `True`  |  -  | Should this Rule be enabled? Defaults to `true`. | 
| **inspection_certificate_id** | string | False | -  |  -  | The ID of the certificate for inbound inspection. Only valid when `decryption_rule_type` is set to `SSLInboundInspection`. | 
| **logging_enabled** | bool | False | `False`  |  -  | Should Logging be enabled? Defaults to `false`. | 
| **negate_destination** | bool | False | `False`  |  -  | Should the inverse of the Destination configuration be used. Defaults to `false`. | 
| **negate_source** | bool | False | `False`  |  -  | Should the inverse of the Source configuration be used. Defaults to `false`. | 
| **protocol** | string | False | `application-default`  |  -  | The Protocol and port to use in the form `[protocol]:[port_number]` e.g. `TCP:8080` or `UDP:53`. Conflicts with `protocol_ports`. Defaults to `application-default`. | 
| **protocol_ports** | string | False | -  |  -  | Specifies a list of Protocol:Port entries. E.g. `[ "TCP:80", "UDP:5431" ]`. Conflicts with `protocol`. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to the Palo Alto Local Rulestack Rule. | 

