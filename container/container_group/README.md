# azurerm_container_group

Manages as an Azure Container Group instance.~> **Note** `network_profile_id` is [deprecated](https://docs.microsoft.com/en-us/azure/container-instances/container-instances-vnet) by Azure. For users who want to continue to manage existing `azurerm_container_group` that rely on `network_profile_id`, please stay on provider versions prior to v3.16.0. Otherwise, use `subnet_ids` instead.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "container/container_group" 
}

inputs = {
   name = "name of container_group" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   container = "container of container_group" 
   os_type = "os_type of container_group" 
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
| **os_type** | string |  `Linux`, `Windows`  |  The OS for the container group. Allowed values are `Linux` and `Windows`. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **sku** | string |  `Standard`  |  `Confidential`, `Dedicated`, `Standard`  |  Specifies the sku of the Container Group. Possible values are `Confidential`, `Dedicated` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **init_container** | string |  -  |  -  |  The definition of an init container that is part of the group as documented in the `init_container` block below. Changing this forces a new resource to be created. | 
| **dns_config** | [block](#dns_config-block-structure) |  -  |  -  |  A `dns_config` block. Changing this forces a new resource to be created. | 
| **diagnostics** | [block](#diagnostics-block-structure) |  -  |  -  |  A `diagnostics` block. Changing this forces a new resource to be created. | 
| **dns_name_label** | string |  -  |  -  |  The DNS label/name for the container group's IP. Changing this forces a new resource to be created. | 
| **dns_name_label_reuse_policy** | string |  `Unsecure`  |  -  |  The value representing the security enum. `Noreuse`, `ResourceGroupReuse`, `SubscriptionReuse`, `TenantReuse` or `Unsecure`. Defaults to `Unsecure`. | 
| **exposed_port** | [block](#exposed_port-block-structure) |  -  |  -  |  Zero or more `exposed_port` blocks. Changing this forces a new resource to be created. | 
| **ip_address_type** | string |  `Public`  |  -  |  Specifies the IP address type of the container. `Public`, `Private` or `None`. Changing this forces a new resource to be created. If set to `Private`, `subnet_ids` also needs to be set. Defaults to `Public`. | 
| **key_vault_key_id** | string |  -  |  -  |  The Key Vault key URI for CMK encryption. Changing this forces a new resource to be created. | 
| **key_vault_user_assigned_identity_id** | string |  -  |  -  |  The user assigned identity that has access to the Key Vault Key. If not specified, the RP principal named "Azure Container Instance Service" will be used instead. Make sure the identity has the proper `key_permissions` set, at least with `Get`, `UnwrapKey`, `WrapKey` and `GetRotationPolicy`. | 
| **subnet_ids** | string |  -  |  -  |  The subnet resource IDs for a container group. Changing this forces a new resource to be created. | 
| **image_registry_credential** | [block](#image_registry_credential-block-structure) |  -  |  -  |  An `image_registry_credential` block. Changing this forces a new resource to be created. | 
| **restart_policy** | string |  `Always`  |  `Always`, `Never`, `OnFailure`  |  Restart policy for the container group. Allowed values are `Always`, `Never`, `OnFailure`. Defaults to `Always`. Changing this forces a new resource to be created. | 
| **zones** | list |  -  |  -  |  A list of Availability Zones in which this Container Group is located. Changing this forces a new resource to be created. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 

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
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that should be configured on this Container Group. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Container Group. |

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

### `exposed_port` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `port` | string | No | - | The port number the container will expose. Changing this forces a new resource to be created. |
| `protocol` | string | No | TCP | The network protocol associated with port. Possible values are 'TCP' & 'UDP'. Changing this forces a new resource to be created. Defaults to 'TCP'. |

### `diagnostics` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `log_analytics` | [block](#diagnostics-block-structure) | Yes | - | A 'log_analytics' block. Changing this forces a new resource to be created. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Container Group. | 
| **identity** | block | No  | An `identity` block. | 
| **ip_address** | string | No  | The IP address allocated to the container group. | 
| **fqdn** | string | No  | The FQDN of the container group derived from `dns_name_label`. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
