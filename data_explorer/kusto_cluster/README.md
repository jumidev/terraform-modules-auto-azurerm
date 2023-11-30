# azurerm_kusto_cluster

Manages a Kusto (also known as Azure Data Explorer) Cluster

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "data_explorer/kusto_cluster" 
}

inputs = {
   name = "name of kusto_cluster" 
   location = "${location}" 
   resource_group_name = "${resource_group}" 
   sku = "sku of kusto_cluster" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}

```

## Variables

| Name | Type | Required? |  Default  |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  |  The name of the Kusto Cluster to create. Only lowercase Alphanumeric characters allowed, starting with a letter. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  The location where the Kusto Cluster should be created. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  |  Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created. | 
| **var.sku** | block | True | -  |  -  |  A `sku` block. | 
| **var.allowed_fqdns** | string | False | -  |  -  |  List of allowed FQDNs(Fully Qualified Domain Name) for egress from Cluster. | 
| **var.allowed_ip_ranges** | string | False | -  |  -  |  The list of ips in the format of CIDR allowed to connect to the cluster. | 
| **var.double_encryption_enabled** | bool | False | -  |  -  |  Is the cluster's double encryption enabled? Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | 
| **var.auto_stop_enabled** | bool | False | `True`  |  -  |  Specifies if the cluster could be automatically stopped (due to lack of data or no activity for many days). Defaults to `true`. | 
| **var.disk_encryption_enabled** | bool | False | -  |  -  |  Specifies if the cluster's disks are encrypted. | 
| **var.streaming_ingestion_enabled** | bool | False | -  |  -  |  Specifies if the streaming ingest is enabled. | 
| **var.public_ip_type** | string | False | `IPv4`  |  -  |  Indicates what public IP type to create - IPv4 (default), or DualStack (both IPv4 and IPv6). Defaults to `IPv4`. | 
| **var.public_network_access_enabled** | bool | False | `True`  |  -  |  Is the public network access enabled? Defaults to `true`. | 
| **var.outbound_network_access_restricted** | bool | False | `False`  |  -  |  Whether to restrict outbound network access. Value is optional but if passed in, must be `true` or `false`, default is `false`. | 
| **var.purge_enabled** | bool | False | -  |  -  |  Specifies if the purge operations are enabled. | 
| **var.virtual_network_configuration** | block | False | -  |  -  |  A `virtual_network_configuration` block. Changing this forces a new resource to be created. | 
| **var.language_extensions** | string | False | -  |  `PYTHON`, `PYTHON_3.10.8`, `R`  |  An list of `language_extensions` to enable. Valid values are: `PYTHON`, `PYTHON_3.10.8` and `R`. `PYTHON` is used to specify Python 3.6.5 image and `PYTHON_3.10.8` is used to specify Python 3.10.8 image. Note that `PYTHON_3.10.8` is only available in skus which support nested virtualization. | 
| **var.optimized_auto_scale** | block | False | -  |  -  |  An `optimized_auto_scale` block. | 
| **var.tags** | map | False | -  |  -  |  A mapping of tags to assign to the resource. | 
| **var.trusted_external_tenants** | string | False | -  |  -  |  Specifies a list of tenant IDs that are trusted by the cluster. Default setting trusts all other tenants. Use `trusted_external_tenants = ["*"]` to explicitly allow all other tenants, `trusted_external_tenants = ["MyTenantOnly"]` for only your tenant or `trusted_external_tenants = ["<tenantId1>", "<tenantIdx>"]` to allow specific other tenants. | 
| **var.zones** | string | False | -  |  -  |  Specifies a list of Availability Zones in which this Kusto Cluster should be located. Changing this forces a new Kusto Cluster to be created. | 

### `sku` block structure

> `name` (string): (REQUIRED) The name of the SKU. Possible values are 'Dev(No SLA)_Standard_D11_v2', 'Dev(No SLA)_Standard_E2a_v4', 'Standard_D14_v2', 'Standard_D11_v2', 'Standard_D16d_v5', 'Standard_D13_v2', 'Standard_D12_v2', 'Standard_DS14_v2+4TB_PS', 'Standard_DS14_v2+3TB_PS', 'Standard_DS13_v2+1TB_PS', 'Standard_DS13_v2+2TB_PS', 'Standard_D32d_v5', 'Standard_D32d_v4', 'Standard_EC8ads_v5', 'Standard_EC8as_v5+1TB_PS', 'Standard_EC8as_v5+2TB_PS', 'Standard_EC16ads_v5', 'Standard_EC16as_v5+4TB_PS', 'Standard_EC16as_v5+3TB_PS', 'Standard_E80ids_v4', 'Standard_E8a_v4', 'Standard_E8ads_v5', 'Standard_E8as_v5+1TB_PS', 'Standard_E8as_v5+2TB_PS', 'Standard_E8as_v4+1TB_PS', 'Standard_E8as_v4+2TB_PS', 'Standard_E8d_v5', 'Standard_E8d_v4', 'Standard_E8s_v5+1TB_PS', 'Standard_E8s_v5+2TB_PS', 'Standard_E8s_v4+1TB_PS', 'Standard_E8s_v4+2TB_PS', 'Standard_E4a_v4', 'Standard_E4ads_v5', 'Standard_E4d_v5', 'Standard_E4d_v4', 'Standard_E16a_v4', 'Standard_E16ads_v5', 'Standard_E16as_v5+4TB_PS', 'Standard_E16as_v5+3TB_PS', 'Standard_E16as_v4+4TB_PS', 'Standard_E16as_v4+3TB_PS', 'Standard_E16d_v5', 'Standard_E16d_v4', 'Standard_E16s_v5+4TB_PS', 'Standard_E16s_v5+3TB_PS', 'Standard_E16s_v4+4TB_PS', 'Standard_E16s_v4+3TB_PS', 'Standard_E64i_v3', 'Standard_E2a_v4', 'Standard_E2ads_v5', 'Standard_E2d_v5', 'Standard_E2d_v4', 'Standard_L8as_v3', 'Standard_L8s', 'Standard_L8s_v3', 'Standard_L8s_v2', 'Standard_L4s', 'Standard_L16as_v3', 'Standard_L16s', 'Standard_L16s_v3', 'Standard_L16s_v2', 'Standard_L32as_v3' and 'Standard_L32s_v3'.
> `capacity` (string): Specifies the node count for the cluster. Boundaries depend on the SKU name.

### `identity` block structure

> `type` (string): (REQUIRED) Specifies the type of Managed Service Identity that is configured on this Kusto Cluster. Possible values are: 'SystemAssigned', 'UserAssigned' and 'SystemAssigned, UserAssigned'.
> `identity_ids` (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this Kusto Cluster.

### `virtual_network_configuration` block structure

> `subnet_id` (string): (REQUIRED) The subnet resource id.
> `engine_public_ip_id` (string): (REQUIRED) Engine service's public IP address resource id.
> `data_management_public_ip_id` (string): (REQUIRED) Data management's service public IP address resource id.

### `optimized_auto_scale` block structure

> `minimum_instances` (int): (REQUIRED) The minimum number of allowed instances. Must between '0' and '1000'.
> `maximum_instances` (int): (REQUIRED) The maximum number of allowed instances. Must between '0' and '1000'.



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
