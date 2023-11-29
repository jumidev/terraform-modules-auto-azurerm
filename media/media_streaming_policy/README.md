# azurerm_media_streaming_policy

Manages a Streaming Policy.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **media_services_account_name** | string | True | -  |  -  | The Media Services account name. Changing this forces a new Streaming Policy to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Streaming Policy. Changing this forces a new Streaming Policy to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group where the Streaming Policy should exist. Changing this forces a new Streaming Policy to be created. | 
| **common_encryption_cbcs** | block | False | -  |  -  | A `common_encryption_cbcs` block. Changing this forces a new Streaming Policy to be created. | 
| **common_encryption_cenc** | block | False | -  |  -  | A `common_encryption_cenc` block. Changing this forces a new Streaming Policy to be created. | 
| **default_content_key_policy_name** | string | False | -  |  -  | Default Content Key used by current Streaming Policy. Changing this forces a new Streaming Policy to be created. | 
| **envelope_encryption** | block | False | -  |  -  | A `envelope_encryption` block. Changing this forces a new Streaming Policy to be created. | 
| **no_encryption_enabled_protocols** | block | False | -  |  -  | A `no_encryption_enabled_protocols` block. Changing this forces a new Streaming Policy to be created. | 

