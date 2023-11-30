# azurerm_service_fabric_cluster

Manages a Service Fabric Cluster.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name of the Service Fabric Cluster. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  The name of the Resource Group in which the Service Fabric Cluster exists. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  Specifies the Azure Region where the Service Fabric Cluster should exist. Changing this forces a new resource to be created. | 
| **var.reliability_level** | string | True | `None`, `Bronze`, `Silver`, `Gold`, `Platinum`  |  Specifies the Reliability Level of the Cluster. Possible values include `None`, `Bronze`, `Silver`, `Gold` and `Platinum`. | 
| **var.management_endpoint** | string | True | -  |  Specifies the Management Endpoint of the cluster such as `http://example.com`. Changing this forces a new resource to be created. | 
| **var.node_type** | block | True | -  |  One or more `node_type` blocks. | 
| **var.upgrade_mode** | string | True | `Automatic`, `Manual`  |  Specifies the Upgrade Mode of the cluster. Possible values are `Automatic` or `Manual`. | 
| **var.vm_image** | string | True | -  |  Specifies the Image expected for the Service Fabric Cluster, such as `Windows`. Changing this forces a new resource to be created. | 
| **var.cluster_code_version** | string | False | -  |  Required if Upgrade Mode set to `Manual`, Specifies the Version of the Cluster Code of the cluster. | 
| **var.add_on_features** | list | False | -  |  A List of one or more features which should be enabled, such as `DnsService`. | 
| **var.azure_active_directory** | block | False | -  |  An `azure_active_directory` block. | 
| **var.certificate_common_names** | block | False | -  |  A `certificate_common_names` block. Conflicts with `certificate`. | 
| **var.certificate** | block | False | -  |  A `certificate` block. Conflicts with `certificate_common_names`. | 
| **var.reverse_proxy_certificate** | block | False | -  |  A `reverse_proxy_certificate` block. Conflicts with `reverse_proxy_certificate_common_names`. | 
| **var.reverse_proxy_certificate_common_names** | block | False | -  |  A `reverse_proxy_certificate_common_names` block. Conflicts with `reverse_proxy_certificate`. | 
| **var.client_certificate_thumbprint** | block | False | -  |  One or more `client_certificate_thumbprint` blocks. | 
| **var.client_certificate_common_name** | block | False | -  |  A `client_certificate_common_name` block. | 
| **var.diagnostics_config** | block | False | -  |  A `diagnostics_config` block. | 
| **var.fabric_settings** | block | False | -  |  One or more `fabric_settings` blocks. | 
| **var.upgrade_policy** | block | False | -  |  A `upgrade_policy` block. | 
| **var.service_fabric_zonal_upgrade_mode** | string | False | `Hierarchical`, `Parallel`  |  Specifies the logical grouping of VMs in upgrade domains. Possible values are `Hierarchical` or `Parallel`. | 
| **var.vmss_zonal_upgrade_mode** | string | False | `Hierarchical`, `Parallel`  |  Specifies the upgrade mode for the virtual machine scale set updates that happen in all availability zones at once. Possible values are `Hierarchical` or `Parallel`. | 
| **var.tags** | map | False | -  |  A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **reliability_level** | string  | - | 
| **management_endpoint** | string  | - | 
| **node_type** | block  | - | 
| **upgrade_mode** | string  | - | 
| **vm_image** | string  | - | 
| **cluster_code_version** | string  | - | 
| **add_on_features** | list  | - | 
| **azure_active_directory** | block  | - | 
| **certificate_common_names** | block  | - | 
| **certificate** | block  | - | 
| **reverse_proxy_certificate** | block  | - | 
| **reverse_proxy_certificate_common_names** | block  | - | 
| **client_certificate_thumbprint** | block  | - | 
| **client_certificate_common_name** | block  | - | 
| **diagnostics_config** | block  | - | 
| **fabric_settings** | block  | - | 
| **upgrade_policy** | block  | - | 
| **service_fabric_zonal_upgrade_mode** | string  | - | 
| **vmss_zonal_upgrade_mode** | string  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the Service Fabric Cluster. | 
| **cluster_endpoint** | string  | The Cluster Endpoint for this Service Fabric Cluster. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "service_fabric/service_fabric_cluster" 
}

inputs = {
   name = "name of service_fabric_cluster" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   reliability_level = "reliability_level of service_fabric_cluster" 
   management_endpoint = "management_endpoint of service_fabric_cluster" 
   node_type = "node_type of service_fabric_cluster" 
   upgrade_mode = "upgrade_mode of service_fabric_cluster" 
   vm_image = "vm_image of service_fabric_cluster" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```