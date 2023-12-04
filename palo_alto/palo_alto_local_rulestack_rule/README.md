# azurerm_palo_alto_local_rulestack_rule

Manages a Palo Alto Local Rulestack Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "palo_alto/palo_alto_local_rulestack_rule" 
}

inputs = {
   applications = "applications of palo_alto_local_rulestack_rule" 
   rulestack_id = "rulestack_id of palo_alto_local_rulestack_rule" 
   priority = "priority of palo_alto_local_rulestack_rule" 
   action = "action of palo_alto_local_rulestack_rule" 
   name = "name of palo_alto_local_rulestack_rule" 
   destination = {
      example_destination = {
      }
  
   }
 
   source = {
      example_source = {
      }
  
   }
 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **applications** | string |  -  |  Specifies a list of Applications. | 
| **rulestack_id** | string |  -  |  The ID of the Local Rulestack in which to create this Rule. Changing this forces a new Palo Alto Local Rulestack Rule to be created. | 
| **priority** | string |  -  |  The Priority of this rule. Rules are executed in numerical order. Changing this forces a new Palo Alto Local Rulestack Rule to be created. | 
| **action** | string |  `Allow`, `DenyResetBoth`, `DenyResetServer`, `DenySilent`  |  The action to take on the rule being triggered. Possible values are `Allow`, `DenyResetBoth`, `DenyResetServer` and `DenySilent`. | 
| **name** | string |  -  |  The name which should be used for this Palo Alto Local Rulestack Rule. | 
| **destination** | [block](#destination-block-structure) |  -  |  One or more `destination` blocks. | 
| **source** | [block](#source-block-structure) |  -  |  One or more `source` blocks. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **audit_comment** | string |  -  |  -  |  The comment for Audit purposes. | 
| **category** | [block](#category-block-structure) |  -  |  -  |  A `category` block. | 
| **decryption_rule_type** | string |  `None`  |  `SSLInboundInspection`, `SSLOutboundInspection`, `None`  |  The type of Decryption to perform on the rule. Possible values include `SSLInboundInspection`, `SSLOutboundInspection`, and `None`. Defaults to `None`. | 
| **description** | string |  -  |  -  |  The description for the rule. | 
| **enabled** | bool |  `True`  |  -  |  Should this Rule be enabled? Defaults to `true`. | 
| **inspection_certificate_id** | string |  -  |  -  |  The ID of the certificate for inbound inspection. Only valid when `decryption_rule_type` is set to `SSLInboundInspection`. | 
| **logging_enabled** | bool |  `False`  |  -  |  Should Logging be enabled? Defaults to `false`. | 
| **negate_destination** | bool |  `False`  |  -  |  Should the inverse of the Destination configuration be used. Defaults to `false`. | 
| **negate_source** | bool |  `False`  |  -  |  Should the inverse of the Source configuration be used. Defaults to `false`. | 
| **protocol** | string |  `application-default`  |  -  |  The Protocol and port to use in the form `[protocol]:[port_number]` e.g. `TCP:8080` or `UDP:53`. Conflicts with `protocol_ports`. Defaults to `application-default`. | 
| **protocol_ports** | string |  -  |  -  |  Specifies a list of Protocol:Port entries. E.g. `[ "TCP:80", "UDP:5431" ]`. Conflicts with `protocol`. | 
| **tags** | map |  -  |  -  |  A mapping of tags which should be assigned to the Palo Alto Local Rulestack Rule. | 

### `source` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cidrs` | string | No | - | Specifies a list of CIDRs. |
| `countries` | string | No | - | Specifies a list of ISO3361-1 Alpha-2 Country codes. Possible values include 'AF', 'AX', 'AL', 'DZ', 'AS', 'AD', 'AO', 'AI', 'AQ', 'AG', 'AR', 'AM', 'AW', 'AU', 'AT', 'AZ', 'BS', 'BH', 'BD', 'BB', 'BY', 'BE', 'BZ', 'BJ', 'BM', 'BT', 'BO', 'BQ', 'BA', 'BW', 'BV', 'BR', 'IO', 'BN', 'BG', 'BF', 'BI', 'KH', 'CM', 'CA', 'CV', 'KY', 'CF', 'TD', 'CL', 'CN', 'CX', 'CC', 'CO', 'KM', 'CG', 'CD', 'CK', 'CR', 'CI', 'HR', 'CU', 'CW', 'CY', 'CZ', 'DK', 'DJ', 'DM', 'DO', 'EC', 'EG', 'SV', 'GQ', 'ER', 'EE', 'ET', 'FK', 'FO', 'FJ', 'FI', 'FR', 'GF', 'PF', 'TF', 'GA', 'GM', 'GE', 'DE', 'GH', 'GI', 'GR', 'GL', 'GD', 'GP', 'GU', 'GT', 'GG', 'GN', 'GW', 'GY', 'HT', 'HM', 'VA', 'HN', 'HK', 'HU', 'IS', 'IN', 'ID', 'IR', 'IQ', 'IE', 'IM', 'IL', 'IT', 'JM', 'JP', 'JE', 'JO', 'KZ', 'KE', 'KI', 'KP', 'KR', 'KW', 'KG', 'LA', 'LV', 'LB', 'LS', 'LR', 'LY', 'LI', 'LT', 'LU', 'MO', 'MK', 'MG', 'MW', 'MY', 'MV', 'ML', 'MT', 'MH', 'MQ', 'MR', 'MU', 'YT', 'MX', 'FM', 'MD', 'MC', 'MN', 'ME', 'MS', 'MA', 'MZ', 'MM', 'NA', 'NR', 'NP', 'NL', 'NC', 'NZ', 'NI', 'NE', 'NG', 'NU', 'NF', 'MP', 'NO', 'OM', 'PK', 'PW', 'PS', 'PA', 'PG', 'PY', 'PE', 'PH', 'PN', 'PL', 'PT', 'PR', 'QA', 'RE', 'RO', 'RU', 'RW', 'BL', 'SH', 'KN', 'LC', 'MF', 'PM', 'VC', 'WS', 'SM', 'ST', 'SA', 'SN', 'RS', 'SC', 'SL', 'SG', 'SX', 'SK', 'SI', 'SB', 'SO', 'ZA', 'GS', 'SS', 'ES', 'LK', 'SD', 'SR', 'SJ', 'SZ', 'SE', 'CH', 'SY', 'TW', 'TJ', 'TZ', 'TH', 'TL', 'TG', 'TK', 'TO', 'TT', 'TN', 'TR', 'TM', 'TC', 'TV', 'UG', 'UA', 'AE', 'GB', 'US', 'UM', 'UY', 'UZ', 'VU', 'VE', 'VN', 'VG', 'VI', 'WF', 'EH', 'YE', 'ZM', 'ZW' |
| `feeds` | string | No | - | Specifies a list of Feeds. |
| `local_rulestack_prefix_list_ids` | string | No | - | Specifies a list of Prefix Lists. |

### `destination` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `cidrs` | string | No | - | Specifies a list of CIDR's. |
| `countries` | string | No | - | Specifies a list of ISO3361-1 Alpha-2 Country codes. Possible values include 'AF', 'AX', 'AL', 'DZ', 'AS', 'AD', 'AO', 'AI', 'AQ', 'AG', 'AR', 'AM', 'AW', 'AU', 'AT', 'AZ', 'BS', 'BH', 'BD', 'BB', 'BY', 'BE', 'BZ', 'BJ', 'BM', 'BT', 'BO', 'BQ', 'BA', 'BW', 'BV', 'BR', 'IO', 'BN', 'BG', 'BF', 'BI', 'KH', 'CM', 'CA', 'CV', 'KY', 'CF', 'TD', 'CL', 'CN', 'CX', 'CC', 'CO', 'KM', 'CG', 'CD', 'CK', 'CR', 'CI', 'HR', 'CU', 'CW', 'CY', 'CZ', 'DK', 'DJ', 'DM', 'DO', 'EC', 'EG', 'SV', 'GQ', 'ER', 'EE', 'ET', 'FK', 'FO', 'FJ', 'FI', 'FR', 'GF', 'PF', 'TF', 'GA', 'GM', 'GE', 'DE', 'GH', 'GI', 'GR', 'GL', 'GD', 'GP', 'GU', 'GT', 'GG', 'GN', 'GW', 'GY', 'HT', 'HM', 'VA', 'HN', 'HK', 'HU', 'IS', 'IN', 'ID', 'IR', 'IQ', 'IE', 'IM', 'IL', 'IT', 'JM', 'JP', 'JE', 'JO', 'KZ', 'KE', 'KI', 'KP', 'KR', 'KW', 'KG', 'LA', 'LV', 'LB', 'LS', 'LR', 'LY', 'LI', 'LT', 'LU', 'MO', 'MK', 'MG', 'MW', 'MY', 'MV', 'ML', 'MT', 'MH', 'MQ', 'MR', 'MU', 'YT', 'MX', 'FM', 'MD', 'MC', 'MN', 'ME', 'MS', 'MA', 'MZ', 'MM', 'NA', 'NR', 'NP', 'NL', 'NC', 'NZ', 'NI', 'NE', 'NG', 'NU', 'NF', 'MP', 'NO', 'OM', 'PK', 'PW', 'PS', 'PA', 'PG', 'PY', 'PE', 'PH', 'PN', 'PL', 'PT', 'PR', 'QA', 'RE', 'RO', 'RU', 'RW', 'BL', 'SH', 'KN', 'LC', 'MF', 'PM', 'VC', 'WS', 'SM', 'ST', 'SA', 'SN', 'RS', 'SC', 'SL', 'SG', 'SX', 'SK', 'SI', 'SB', 'SO', 'ZA', 'GS', 'SS', 'ES', 'LK', 'SD', 'SR', 'SJ', 'SZ', 'SE', 'CH', 'SY', 'TW', 'TJ', 'TZ', 'TH', 'TL', 'TG', 'TK', 'TO', 'TT', 'TN', 'TR', 'TM', 'TC', 'TV', 'UG', 'UA', 'AE', 'GB', 'US', 'UM', 'UY', 'UZ', 'VU', 'VE', 'VN', 'VG', 'VI', 'WF', 'EH', 'YE', 'ZM', 'ZW' |
| `feeds` | string | No | - | Specifies a list of Feeds. |
| `local_rulestack_fqdn_list_ids` | string | No | - | Specifies a list of FQDN lists. |
| `local_rulestack_prefix_list_ids` | string | No | - | Specifies a list of Prefix Lists. |

### `category` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `feeds` | string | No | - | Specifies a list of feeds to match. |
| `custom_urls` | string | Yes | - | Specifies a list of URL categories to match. Possible values include 'abortion', 'abused-drugs', 'adult', 'alcohol-and-tobacco', 'auctions', 'business-and-economy', 'command-and-control', 'computer-and-internet-info', 'content-delivery-networks', 'copyright-infringement', 'cryptocurrency', 'dating', 'dynamic-dns', 'educational-institutions', 'entertainment-and-arts', 'extremism', 'financial-services', 'gambling', 'games', 'government', 'grayware', 'hacking', 'health-and-medicine', 'high-risk', 'home-and-garden', 'hunting-and-fishing', 'insufficient-content', 'internet-communications-and-telephony', 'internet-portals', 'job-search', 'legal', 'low-risk', 'malware', 'medium-risk', 'military', 'motor-vehicles', 'music', 'newly-registered-domain', 'news', 'not-resolved', 'nudity', 'online-storage-and-backup', 'parked', 'peer-to-peer', 'personal-sites-and-blogs', 'philosophy-and-political-advocacy', 'phishing', 'private-ip-addresses', 'proxy-avoidance-and-anonymizers', 'questionable', 'real-estate', 'real-time-detection', 'recreation-and-hobbies', 'reference-and-research', 'religion', 'search-engines', 'sex-education', 'shareware-and-freeware', 'shopping', 'social-networking', 'society', 'sports', 'stock-advice-and-tools', 'streaming-media', 'swimsuits-and-intimate-apparel', 'training-and-tools', 'translation', 'travel', 'unknown', 'weapons', 'web-advertisements', 'web-based-email', and 'web-hosting'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Palo Alto Local Rulestack Rule. | 

Additionally, all variables are provided as outputs.
