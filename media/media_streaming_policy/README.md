# azurerm_media_streaming_policy

Manages a Streaming Policy.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "media/media_streaming_policy" 
}

inputs = {
   media_services_account_name = "media_services_account_name of media_streaming_policy" 
   name = "name of media_streaming_policy" 
   resource_group_name = "${resource_group}" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

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

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Streaming Policy. | 

Additionally, all variables are provided as outputs.
