# azurerm_kusto_cluster

Manages a Kusto (also known as Azure Data Explorer) Cluster

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_explorer/kusto_cluster" 
}

inputs = {
   name = "name of kusto_cluster" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   sku = {
      example_sku = {
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

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the Kusto Cluster to create. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created. | 
| **location** | string |  The location where the Kusto Cluster should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created. | 
| **sku** | [block](#sku-block-structure) |  A `sku` block. | 

## Optional Variables

| Name | Type |  Default  |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- | ----------- |
| **allowed_fqdns** | string |  -  |  -  |  List of allowed FQDNs(Fully Qualified Domain Name) for egress from Cluster. | 
| **allowed_ip_ranges** | string |  -  |  -  |  The list of ips in the format of CIDR allowed to connect to the cluster. | 
| **double_encryption_enabled** | bool |  -  |  -  |  Is the cluster's double encryption enabled? Changing this forces a new resource to be created. | 
| **identity** | [block](#identity-block-structure) |  -  |  -  |  An `identity` block. | 
| **auto_stop_enabled** | bool |  `True`  |  -  |  Specifies if the cluster could be automatically stopped (due to lack of data or no activity for many days). Defaults to `true`. | 
| **disk_encryption_enabled** | bool |  -  |  -  |  Specifies if the cluster's disks are encrypted. | 
| **streaming_ingestion_enabled** | bool |  -  |  -  |  Specifies if the streaming ingest is enabled. | 
| **public_ip_type** | string |  `IPv4`  |  -  |  Indicates what public IP type to create - IPv4 (default), or DualStack (both IPv4 and IPv6). Defaults to `IPv4`. | 
| **public_network_access_enabled** | bool |  `True`  |  -  |  Is the public network access enabled? Defaults to `true`. | 
| **outbound_network_access_restricted** | bool |  `False`  |  -  |  Whether to restrict outbound network access. Value is optional but if passed in, must be `true` or `false`, default is `false`. | 
| **purge_enabled** | bool |  -  |  -  |  Specifies if the purge operations are enabled. | 
| **virtual_network_configuration** | [block](#virtual_network_configuration-block-structure) |  -  |  -  |  A `virtual_network_configuration` block. Changing this forces a new resource to be created. | 
| **language_extensions** | string |  -  |  `PYTHON`, `PYTHON_3.10.8`, `R`  |  An list of `language_extensions` to enable. Valid values are: `PYTHON`, `PYTHON_3.10.8` and `R`. `PYTHON` is used to specify Python 3.6.5 image and `PYTHON_3.10.8` is used to specify Python 3.10.8 image. Note that `PYTHON_3.10.8` is only available in skus which support nested virtualization. | 
| **optimized_auto_scale** | [block](#optimized_auto_scale-block-structure) |  -  |  -  |  An `optimized_auto_scale` block. | 
| **tags** | map |  -  |  -  |  A mapping of tags to assign to the resource. | 
| **trusted_external_tenants** | string |  -  |  -  |  Specifies a list of tenant IDs that are trusted by the cluster. Default setting trusts all other tenants. Use `trusted_external_tenants = ["*"]` to explicitly allow all other tenants, `trusted_external_tenants = ["MyTenantOnly"]` for only your tenant or `trusted_external_tenants = ["<tenantId1>", "<tenantIdx>"]` to allow specific other tenants. | 
| **zones** | string |  -  |  -  |  Specifies a list of Availability Zones in which this Kusto Cluster should be located. Changing this forces a new Kusto Cluster to be created. | 

### `virtual_network_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_id` | string | Yes | - | The subnet resource id. |
| `engine_public_ip_id` | string | Yes | - | Engine service's public IP address resource id. |
| `data_management_public_ip_id` | string | Yes | - | Data management's service public IP address resource id. |

### `optimized_auto_scale` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `minimum_instances` | int | Yes | - | The minimum number of allowed instances. Must between '0' and '1000'. |
| `maximum_instances` | int | Yes | - | The maximum number of allowed instances. Must between '0' and '1000'. |

### `sku` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `capacity` | string | No | - | Specifies the node count for the cluster. Boundaries depend on the SKU name. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that is configured on this Kusto Cluster. Possible values are: 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Kusto Cluster. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The Kusto Cluster ID. | 
| **uri** | string | No  | The FQDN of the Azure Kusto Cluster. | 
| **data_ingestion_uri** | string | No  | The Kusto Cluster URI to be used for data ingestion. | 
| **identity** | block | No  | An `identity` block. | 
| **principal_id** | string | No  | The Principal ID associated with this System Assigned Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this System Assigned Managed Service Identity. | 

Additionally, all variables are provided as outputs.
