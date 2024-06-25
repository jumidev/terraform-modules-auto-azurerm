# azurerm_container_group



## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "container/container_group"   
}
inputs = {
   name = "Specifies the name of the Container Group"   
   resource_group_name = "${resource_group}"   
   location = "${location}"   
   container = "The definition of a container that is part of the group as documented in the `co..."   
   os_type = "The OS for the container group"   
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
| **name** | string |  -  |  Specifies the name of the Container Group. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  The name of the resource group in which to create the Container Group. Changing this forces a new resource to be created. | 
| **location** | string |  -  |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **container** | string |  -  |  The definition of a container that is part of the group as documented in the `container` block below. Changing this forces a new resource to be created. | 
| **os_type** | string |  `Linux`, `Windows`  |  The OS for the container group. Allowed values are `Linux` and `Windows`. Changing this forces a new resource to be created. ~> **Note:** if `os_type` is set to `Windows` currently only a single `container` block is supported. Windows containers are not supported in virtual networks. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **sku** | string |  `Standard`  |  `Confidential`, `Dedicated`, `Standard`  |  Specifies the sku of the Container Group. Possible values are `Confidential`, `Dedicated` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **init_container** | string |  -  |  -  |  The definition of an init container that is part of the group as documented in the `init_container` block below. Changing this forces a new resource to be created. | 
| **dns_config** | [block](#dns_config-block-structure) |  -  |  -  |  A `dns_config` block. Changing this forces a new resource to be created. | 
| **diagnostics** | [block](#diagnostics-block-structure) |  -  |  -  |  A `diagnostics` block. Changing this forces a new resource to be created. | 
| **dns_name_label** | string |  -  |  -  |  The DNS label/name for the container group's IP. Changing this forces a new resource to be created. ~> **Note:** DNS label/name is not supported when deploying to virtual networks. | 
| **dns_name_label_reuse_policy** | string |  `Unsecure`  |  -  |  The value representing the security enum. `Noreuse`, `ResourceGroupReuse`, `SubscriptionReuse`, `TenantReuse` or `Unsecure`. Defaults to `Unsecure`. | 
| **exposed_port** | list |  -  |  -  |  Zero or more `exposed_port` blocks. Changing this forces a new resource to be created. ~> **Note:** The `exposed_port` can only contain ports that are also exposed on one or more containers in the group. | 
| **ip_address_type** | string |  `Public`  |  `Public`, `Private`, `None`  |  Specifies the IP address type of the container. `Public`, `Private` or `None`. Changing this forces a new resource to be created. If set to `Private`, `subnet_ids` also needs to be set. Defaults to `Public`. ~> **Note:** `dns_name_label` and `os_type` set to `windows` are not compatible with `Private` `ip_address_type` | 
| **key_vault_key_id** | string |  -  |  -  |  The Key Vault key URI for CMK encryption. Changing this forces a new resource to be created. | 
| **key_vault_user_assigned_identity_id** | string |  -  |  -  |  The user assigned identity that has access to the Key Vault Key. If not specified, the RP principal named "Azure Container Instance Service" will be used instead. Make sure the identity has the proper `key_permissions` set, at least with `Get`, `UnwrapKey`, `WrapKey` and `GetRotationPolicy`. | 
| **subnet_ids** | string |  -  |  -  |  The subnet resource IDs for a container group. Changing this forces a new resource to be created. | 
| **image_registry_credential** | [block](#image_registry_credential-block-structure) |  -  |  -  |  An `image_registry_credential` block. Changing this forces a new resource to be created. | 
| **priority** | string |  -  |  `Regular`, `Spot`  |  The priority of the Container Group. Possible values are `Regular` and `Spot`. Changing this forces a new resource to be created. ~> **NOTE:** When `priority` is set to `Spot`, the `ip_address_type` has to be `None`. | 
| **restart_policy** | string |  `Always`  |  `Always`, `Never`, `OnFailure`  |  Restart policy for the container group. Allowed values are `Always`, `Never`, `OnFailure`. Defaults to `Always`. Changing this forces a new resource to be created. | 
| **zones** | list |  -  |  -  |  A list of Availability Zones in which this Container Group is located. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

### `dns_config` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `nameservers` | list | Yes | - | A list of nameservers the containers will search out to resolve requests. Changing this forces a new resource to be created. |
| `search_domains` | list | No | - | A list of search domains that DNS requests will search along. Changing this forces a new resource to be created. |
| `options` | list | No | - | A list of [resolver configuration options](https://man7.org/linux/man-pages/man5/resolv.conf.5.html). Changing this forces a new resource to be created. |

### `log_analytics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `log_type` | string | No | - | The log type which should be used. Possible values are 'ContainerInsights' and 'ContainerInstanceLogs'. Changing this forces a new resource to be created. |
| `workspace_id` | string | Yes | - | The Workspace ID of the Log Analytics Workspace. Changing this forces a new resource to be created. |
| `workspace_key` | string | Yes | - | The Workspace Key of the Log Analytics Workspace. Changing this forces a new resource to be created. |
| `metadata` | string | No | - | Any metadata required for Log Analytics. Changing this forces a new resource to be created. |

### `diagnostics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `log_analytics` | [block](#log_analytics-block-structure) | Yes | - | A 'log_analytics' block. Changing this forces a new resource to be created. |

### `image_registry_credential` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `user_assigned_identity_id` | string | No | - | The identity ID for the private registry. Changing this forces a new resource to be created. |
| `username` | string | No | - | The username with which to connect to the registry. Changing this forces a new resource to be created. |
| `password` | string | No | - | The password with which to connect to the registry. Changing this forces a new resource to be created. |
| `server` | string | Yes | - | The address to use to connect to the registry without protocol ('https'/'http'). For example: 'myacr.acr.io'. Changing this forces a new resource to be created. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Container Group. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). ~> **NOTE:** When 'type' is set to 'SystemAssigned', the identity of the Principal ID can be retrieved after the container group has been created. See [documentation](https://docs.microsoft.com/azure/active-directory/managed-service-identity/overview) for more information. |
| `identity_ids` | list | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Container Group. ~> **NOTE:** This is required when 'type' is set to 'UserAssigned' or 'SystemAssigned, UserAssigned'. ~> **NOTE:** Currently you can't use a managed identity in a container group deployed to a virtual network. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **privilege_enabled** | bool | No  | Whether the container's permission is elevated to privileged? Changing this forces a new resource to be created. ~> **NOTE:** Currently, this only applies when the `os_type` is `Linux` and the `sku` is `Confidential`. In addition to the Arguments listed above - the following Attributes are exported: | 
| **id** | string | No  | The ID of the Container Group. | 
| **identity** | block | No  | An `identity` block. | 
| **ip_address** | string | No  | The IP address allocated to the container group. | 
| **fqdn** | string | No  | The FQDN of the container group derived from `dns_name_label`. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
