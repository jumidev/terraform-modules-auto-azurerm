# azurerm_kusto_cluster

Manages a Kusto (also known as Azure Data Explorer) Cluster

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



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **sku** | block  | - | 
| **allowed_fqdns** | string  | - | 
| **allowed_ip_ranges** | string  | - | 
| **double_encryption_enabled** | bool  | - | 
| **identity** | block  | - | 
| **auto_stop_enabled** | bool  | - | 
| **disk_encryption_enabled** | bool  | - | 
| **streaming_ingestion_enabled** | bool  | - | 
| **public_ip_type** | string  | - | 
| **public_network_access_enabled** | bool  | - | 
| **outbound_network_access_restricted** | bool  | - | 
| **purge_enabled** | bool  | - | 
| **virtual_network_configuration** | block  | - | 
| **language_extensions** | string  | - | 
| **optimized_auto_scale** | block  | - | 
| **tags** | map  | - | 
| **trusted_external_tenants** | string  | - | 
| **zones** | string  | - | 
| **id** | string  | The Kusto Cluster ID. | 
| **uri** | string  | The FQDN of the Azure Kusto Cluster. | 
| **data_ingestion_uri** | string  | The Kusto Cluster URI to be used for data ingestion. | 
| **identity** | block  | An `identity` block. | 
| **principal_id** | string  | The Principal ID associated with this System Assigned Managed Service Identity. | 
| **tenant_id** | string  | The Tenant ID associated with this System Assigned Managed Service Identity. | 