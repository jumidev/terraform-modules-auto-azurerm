# azurerm_service_fabric_cluster

Manages a Service Fabric Cluster.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Service Fabric Cluster. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the Service Fabric Cluster exists. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the Azure Region where the Service Fabric Cluster should exist. Changing this forces a new resource to be created. | 
| **reliability_level** | string | True | -  |  `None`, `Bronze`, `Silver`, `Gold`, `Platinum`  | Specifies the Reliability Level of the Cluster. Possible values include `None`, `Bronze`, `Silver`, `Gold` and `Platinum`. | 
| **management_endpoint** | string | True | -  |  -  | Specifies the Management Endpoint of the cluster such as `http://example.com`. Changing this forces a new resource to be created. | 
| **node_type** | block | True | -  |  -  | One or more `node_type` blocks. | 
| **upgrade_mode** | string | True | -  |  `Automatic`, `Manual`  | Specifies the Upgrade Mode of the cluster. Possible values are `Automatic` or `Manual`. | 
| **vm_image** | string | True | -  |  -  | Specifies the Image expected for the Service Fabric Cluster, such as `Windows`. Changing this forces a new resource to be created. | 
| **cluster_code_version** | string | False | -  |  -  | Required if Upgrade Mode set to `Manual`, Specifies the Version of the Cluster Code of the cluster. | 
| **add_on_features** | list | False | -  |  -  | A List of one or more features which should be enabled, such as `DnsService`. | 
| **azure_active_directory** | block | False | -  |  -  | An `azure_active_directory` block. | 
| **certificate_common_names** | block | False | -  |  -  | A `certificate_common_names` block. Conflicts with `certificate`. | 
| **certificate** | block | False | -  |  -  | A `certificate` block. Conflicts with `certificate_common_names`. | 
| **reverse_proxy_certificate** | block | False | -  |  -  | A `reverse_proxy_certificate` block. Conflicts with `reverse_proxy_certificate_common_names`. | 
| **reverse_proxy_certificate_common_names** | block | False | -  |  -  | A `reverse_proxy_certificate_common_names` block. Conflicts with `reverse_proxy_certificate`. | 
| **client_certificate_thumbprint** | block | False | -  |  -  | One or more `client_certificate_thumbprint` blocks. | 
| **client_certificate_common_name** | block | False | -  |  -  | A `client_certificate_common_name` block. | 
| **diagnostics_config** | block | False | -  |  -  | A `diagnostics_config` block. | 
| **fabric_settings** | block | False | -  |  -  | One or more `fabric_settings` blocks. | 
| **upgrade_policy** | block | False | -  |  -  | A `upgrade_policy` block. | 
| **service_fabric_zonal_upgrade_mode** | string | False | -  |  `Hierarchical`, `Parallel`  | Specifies the logical grouping of VMs in upgrade domains. Possible values are `Hierarchical` or `Parallel`. | 
| **vmss_zonal_upgrade_mode** | string | False | -  |  `Hierarchical`, `Parallel`  | Specifies the upgrade mode for the virtual machine scale set updates that happen in all availability zones at once. Possible values are `Hierarchical` or `Parallel`. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

