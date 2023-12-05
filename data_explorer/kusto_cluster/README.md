# azurerm_kusto_cluster

Manages a Kusto (also known as Azure Data Explorer) Cluster

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "data_explorer/kusto_cluster"   
}

inputs = {
   name = "The name of the Kusto Cluster to create"   
   location = "${location}"   
   resource_group_name = "${resource_group}"   
   sku = {
      name = "..."      
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

### `sku` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | The name of the SKU. Possible values are 'Dev(No SLA)_Standard_D11_v2', 'Dev(No SLA)_Standard_E2a_v4', 'Standard_D14_v2', 'Standard_D11_v2', 'Standard_D16d_v5', 'Standard_D13_v2', 'Standard_D12_v2', 'Standard_DS14_v2+4TB_PS', 'Standard_DS14_v2+3TB_PS', 'Standard_DS13_v2+1TB_PS', 'Standard_DS13_v2+2TB_PS', 'Standard_D32d_v5', 'Standard_D32d_v4', 'Standard_EC8ads_v5', 'Standard_EC8as_v5+1TB_PS', 'Standard_EC8as_v5+2TB_PS', 'Standard_EC16ads_v5', 'Standard_EC16as_v5+4TB_PS', 'Standard_EC16as_v5+3TB_PS', 'Standard_E80ids_v4', 'Standard_E8a_v4', 'Standard_E8ads_v5', 'Standard_E8as_v5+1TB_PS', 'Standard_E8as_v5+2TB_PS', 'Standard_E8as_v4+1TB_PS', 'Standard_E8as_v4+2TB_PS', 'Standard_E8d_v5', 'Standard_E8d_v4', 'Standard_E8s_v5+1TB_PS', 'Standard_E8s_v5+2TB_PS', 'Standard_E8s_v4+1TB_PS', 'Standard_E8s_v4+2TB_PS', 'Standard_E4a_v4', 'Standard_E4ads_v5', 'Standard_E4d_v5', 'Standard_E4d_v4', 'Standard_E16a_v4', 'Standard_E16ads_v5', 'Standard_E16as_v5+4TB_PS', 'Standard_E16as_v5+3TB_PS', 'Standard_E16as_v4+4TB_PS', 'Standard_E16as_v4+3TB_PS', 'Standard_E16d_v5', 'Standard_E16d_v4', 'Standard_E16s_v5+4TB_PS', 'Standard_E16s_v5+3TB_PS', 'Standard_E16s_v4+4TB_PS', 'Standard_E16s_v4+3TB_PS', 'Standard_E64i_v3', 'Standard_E2a_v4', 'Standard_E2ads_v5', 'Standard_E2d_v5', 'Standard_E2d_v4', 'Standard_L8as_v3', 'Standard_L8s', 'Standard_L8s_v3', 'Standard_L8s_v2', 'Standard_L4s', 'Standard_L16as_v3', 'Standard_L16s', 'Standard_L16s_v3', 'Standard_L16s_v2', 'Standard_L32as_v3' and 'Standard_L32s_v3'. |
| `capacity` | string | No | - | Specifies the node count for the cluster. Boundaries depend on the SKU name. |

### `virtual_network_configuration` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `subnet_id` | string | Yes | - | The subnet resource id. |
| `engine_public_ip_id` | string | Yes | - | Engine service's public IP address resource id. |
| `data_management_public_ip_id` | string | Yes | - | Data management's service public IP address resource id. |

### `identity` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `type` | string | Yes | - | Specifies the type of Managed Service Identity that is configured on this Kusto Cluster. Possible values are: 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned'. |
| `identity_ids` | string | No | - | Specifies a list of User Assigned Managed Identity IDs to be assigned to this Kusto Cluster. |

### `optimized_auto_scale` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `minimum_instances` | int | Yes | - | The minimum number of allowed instances. Must between '0' and '1000'. |
| `maximum_instances` | int | Yes | - | The maximum number of allowed instances. Must between '0' and '1000'. |



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
