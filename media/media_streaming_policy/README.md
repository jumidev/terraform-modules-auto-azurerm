# azurerm_media_streaming_policy

Manages a Streaming Policy.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "media/media_streaming_policy"   
}

inputs = {
   # media_services_account_name → set in tfstate_inputs
   name = "The name which should be used for this Streaming Policy..."   
   resource_group_name = "${resource_group}"   
}

tfstate_inputs = {
   media_services_account_name = "path/to/media_services_account_component:name"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **media_services_account_name** | string |  The Media Services account name. Changing this forces a new Streaming Policy to be created. | 
| **name** | string |  The name which should be used for this Streaming Policy. Changing this forces a new Streaming Policy to be created. | 
| **resource_group_name** | string |  The name of the Resource Group where the Streaming Policy should exist. Changing this forces a new Streaming Policy to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **common_encryption_cbcs** | [block](#common_encryption_cbcs-block-structure) |  A `common_encryption_cbcs` block. Changing this forces a new Streaming Policy to be created. | 
| **common_encryption_cenc** | [block](#common_encryption_cenc-block-structure) |  A `common_encryption_cenc` block. Changing this forces a new Streaming Policy to be created. | 
| **default_content_key_policy_name** | string |  Default Content Key used by current Streaming Policy. Changing this forces a new Streaming Policy to be created. | 
| **envelope_encryption** | [block](#envelope_encryption-block-structure) |  A `envelope_encryption` block. Changing this forces a new Streaming Policy to be created. | 
| **no_encryption_enabled_protocols** | [block](#no_encryption_enabled_protocols-block-structure) |  A `no_encryption_enabled_protocols` block. Changing this forces a new Streaming Policy to be created. | 

### `track` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `condition` | [block](#condition-block-structure) | Yes | - | One or more 'condition' blocks. Changing this forces a new Streaming Policy to be created. |

### `clear_track` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `condition` | [block](#condition-block-structure) | Yes | - | One or more 'condition' blocks. Changing this forces a new Streaming Policy to be created. |

### `common_encryption_cenc` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `clear_key_encryption` | [block](#clear_key_encryption-block-structure) | No | - | A 'clear_key_encryption' block. Changing this forces a new Streaming Policy to be created. |
| `clear_track` | [block](#clear_track-block-structure) | No | - | One or more 'clear_track' blocks. Changing this forces a new Streaming Policy to be created. |
| `content_key_to_track_mapping` | [block](#content_key_to_track_mapping-block-structure) | No | - | One or more 'content_key_to_track_mapping' blocks. Changing this forces a new Streaming Policy to be created. |
| `default_content_key` | [block](#default_content_key-block-structure) | No | - | A 'default_content_key' block. Changing this forces a new Streaming Policy to be created. |
| `drm_playready` | [block](#drm_playready-block-structure) | No | - | A 'drm_playready' block. Changing this forces a new Streaming Policy to be created. |
| `drm_widevine_custom_license_acquisition_url_template` | string | No | - | The URL template for the custom service that delivers licenses to the end user. This is not required when using Azure Media Services for issuing licenses. Changing this forces a new Streaming Policy to be created. |
| `enabled_protocols` | [block](#enabled_protocols-block-structure) | No | - | A 'enabled_protocols' block. Changing this forces a new Streaming Policy to be created. |

### `envelope_encryption` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `custom_keys_acquisition_url_template` | string | No | - | The URL template for the custom service that delivers content keys to the end user. This is not required when using Azure Media Services for issuing keys. Changing this forces a new Streaming Policy to be created. |
| `default_content_key` | [block](#default_content_key-block-structure) | No | - | A 'default_content_key' block. Changing this forces a new Streaming Policy to be created. |
| `enabled_protocols` | [block](#enabled_protocols-block-structure) | No | - | A 'enabled_protocols' block. Changing this forces a new Streaming Policy to be created. |

### `enabled_protocols` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dash` | string | No | - | Enable DASH protocol or not. Changing this forces a new Streaming Policy to be created. |
| `download` | string | No | - | Enable Download protocol or not. Changing this forces a new Streaming Policy to be created. |
| `hls` | string | No | - | Enable HLS protocol or not. Changing this forces a new Streaming Policy to be created. |
| `smooth_streaming` | string | No | - | Enable SmoothStreaming protocol or not. Changing this forces a new Streaming Policy to be created. |

### `drm_fairplay` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `allow_persistent_license` | bool | No | - | All license to be persistent or not. Changing this forces a new Streaming Policy to be created. |
| `custom_license_acquisition_url_template` | string | No | - | The URL template for the custom service that delivers licenses to the end user. This is not required when using Azure Media Services for issuing licenses. Changing this forces a new Streaming Policy to be created. |

### `content_key_to_track_mapping` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `label` | string | No | - | Specifies the content key when creating a Streaming Locator. Changing this forces a new Streaming Policy to be created. |
| `policy_name` | string | No | - | The policy used by the default key. Changing this forces a new Streaming Policy to be created. |
| `track` | [block](#track-block-structure) | Yes | - | One or more 'track' blocks. Changing this forces a new Streaming Policy to be created. |

### `drm_playready` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `custom_attributes` | string | No | - | Custom attributes for PlayReady. Changing this forces a new Streaming Policy to be created. |
| `custom_license_acquisition_url_template` | string | No | - | The URL template for the custom service that delivers licenses to the end user. This is not required when using Azure Media Services for issuing licenses. Changing this forces a new Streaming Policy to be created. |

### `no_encryption_enabled_protocols` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `dash` | string | No | - | Enable DASH protocol or not. Changing this forces a new Streaming Policy to be created. |
| `download` | string | No | - | Enable Download protocol or not. Changing this forces a new Streaming Policy to be created. |
| `hls` | string | No | - | Enable HLS protocol or not. Changing this forces a new Streaming Policy to be created. |
| `smooth_streaming` | string | No | - | Enable SmoothStreaming protocol or not. Changing this forces a new Streaming Policy to be created. |

### `clear_key_encryption` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `custom_keys_acquisition_url_template` | string | Yes | - | The URL template for the custom service that delivers content keys to the end user. This is not required when using Azure Media Services for issuing keys. Changing this forces a new Streaming Policy to be created. |

### `condition` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `operation` | string | Yes | - | The track property condition operation. Possible value is 'Equal'. Changing this forces a new Streaming Policy to be created. |
| `property` | string | Yes | - | The track property type. Possible value is 'FourCC'. Changing this forces a new Streaming Policy to be created. |
| `value` | string | Yes | - | The track property value. Changing this forces a new Streaming Policy to be created. |

### `common_encryption_cbcs` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `clear_key_encryption` | [block](#clear_key_encryption-block-structure) | No | - | A 'clear_key_encryption' block. Changing this forces a new Streaming Policy to be created. |
| `default_content_key` | [block](#default_content_key-block-structure) | No | - | A 'default_content_key' block. Changing this forces a new Streaming Policy to be created. |
| `drm_fairplay` | [block](#drm_fairplay-block-structure) | No | - | A 'drm_fairplay' block. Changing this forces a new Streaming Policy to be created. |
| `enabled_protocols` | [block](#enabled_protocols-block-structure) | No | - | A 'enabled_protocols' block. Changing this forces a new Streaming Policy to be created. |

### `default_content_key` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `label` | string | No | - | Label can be used to specify Content Key when creating a Streaming Locator. Changing this forces a new Streaming Policy to be created. |
| `policy_name` | string | No | - | Policy used by Default Key. Changing this forces a new Streaming Policy to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Streaming Policy. | 

Additionally, all variables are provided as outputs.
