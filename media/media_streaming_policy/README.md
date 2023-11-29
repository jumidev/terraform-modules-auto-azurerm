# azurerm_media_streaming_policy

Manages a Streaming Policy.

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.media_services_account_name** | string | True | The Media Services account name. Changing this forces a new Streaming Policy to be created. | 
| **var.name** | string | True | The name which should be used for this Streaming Policy. Changing this forces a new Streaming Policy to be created. | 
| **var.resource_group_name** | string | True | The name of the Resource Group where the Streaming Policy should exist. Changing this forces a new Streaming Policy to be created. | 
| **var.common_encryption_cbcs** | block | False | A `common_encryption_cbcs` block. Changing this forces a new Streaming Policy to be created. | 
| **var.common_encryption_cenc** | block | False | A `common_encryption_cenc` block. Changing this forces a new Streaming Policy to be created. | 
| **var.default_content_key_policy_name** | string | False | Default Content Key used by current Streaming Policy. Changing this forces a new Streaming Policy to be created. | 
| **var.envelope_encryption** | block | False | A `envelope_encryption` block. Changing this forces a new Streaming Policy to be created. | 
| **var.no_encryption_enabled_protocols** | block | False | A `no_encryption_enabled_protocols` block. Changing this forces a new Streaming Policy to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **media_services_account_name** | string  | - | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **common_encryption_cbcs** | block  | - | 
| **common_encryption_cenc** | block  | - | 
| **default_content_key_policy_name** | string  | - | 
| **envelope_encryption** | block  | - | 
| **no_encryption_enabled_protocols** | block  | - | 
| **id** | string  | The ID of the Streaming Policy. | 