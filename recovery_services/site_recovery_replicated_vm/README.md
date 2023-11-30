# azurerm_site_recovery_replicated_vm

Manages a VM replicated using Azure Site Recovery (Azure to Azure only). A replicated VM keeps a copiously updated image of the VM in another region in order to be able to start the VM in that region in case of a disaster.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "recovery_services/site_recovery_replicated_vm" 
}

inputs = {
   name = "name of site_recovery_replicated_vm" 
   resource_group_name = "${resource_group}" 
   recovery_vault_name = "recovery_vault_name of site_recovery_replicated_vm" 
   recovery_replication_policy_id = "recovery_replication_policy_id of site_recovery_replicated_vm" 
   source_recovery_fabric_name = "source_recovery_fabric_name of site_recovery_replicated_vm" 
   source_vm_id = "source_vm_id of site_recovery_replicated_vm" 
   source_recovery_protection_container_name = "source_recovery_protection_container_name of site_recovery_replicated_vm" 
   target_resource_group_id = "target_resource_group_id of site_recovery_replicated_vm" 
   target_recovery_fabric_id = "target_recovery_fabric_id of site_recovery_replicated_vm" 
   target_recovery_protection_container_id = "target_recovery_protection_container_id of site_recovery_replicated_vm" 
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
| **var.name** | string  The name of the replication for the replicated VM. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string  Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string  The name of the vault that should be updated. Changing this forces a new resource to be created. | 
| **var.recovery_replication_policy_id** | string  Id of the policy to use for this replicated vm. Changing this forces a new resource to be created. | 
| **var.source_recovery_fabric_name** | string  Name of fabric that should contain this replication. Changing this forces a new resource to be created. | 
| **var.source_vm_id** | string  Id of the VM to replicate Changing this forces a new resource to be created. | 
| **var.source_recovery_protection_container_name** | string  Name of the protection container to use. Changing this forces a new resource to be created. | 
| **var.target_resource_group_id** | string  Id of resource group where the VM should be created when a failover is done. Changing this forces a new resource to be created. | 
| **var.target_recovery_fabric_id** | string  Id of fabric where the VM replication should be handled when a failover is done. Changing this forces a new resource to be created. | 
| **var.target_recovery_protection_container_id** | string  Id of protection container where the VM replication should be created when a failover is done. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **var.target_availability_set_id** | string  Id of availability set that the new VM should belong to when a failover is done. | 
| **var.target_zone** | string  Specifies the Availability Zone where the Failover VM should exist. Changing this forces a new resource to be created. | 
| **var.managed_disk** | block  One or more `managed_disk` block. Changing this forces a new resource to be created. | 
| **var.unmanaged_disk** | block  One or more `unmanaged_disk` block. Changing this forces a new resource to be created. | 
| **var.target_edge_zone** | string  Specifies the Edge Zone within the Azure Region where this Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created. | 
| **var.target_proximity_placement_group_id** | string  Id of Proximity Placement Group the new VM should belong to when a failover is done. | 
| **var.target_boot_diagnostic_storage_account_id** | string  Id of the storage account which the new VM should used for boot diagnostic when a failover is done. | 
| **var.target_capacity_reservation_group_id** | string  Id of the Capacity reservation group where the new VM should belong to when a failover is done. | 
| **var.target_virtual_machine_scale_set_id** | string  Id of the Virtual Machine Scale Set which the new Vm should belong to when a failover is done. | 
| **var.target_network_id** | string  Network to use when a failover is done (recommended to set if any network_interface is configured for failover). | 
| **var.test_network_id** | string  Network to use when a test failover is done. | 
| **var.network_interface** | block  One or more `network_interface` block. | 
| **var.multi_vm_group_name** | string  Name of group in which all machines will replicate together and have shared crash consistent and app-consistent recovery points when failed over. | 

### `managed_disk` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `disk_id` | string | Yes | - | Id of disk that should be replicated. Changing this forces a new resource to be created. |
| `staging_storage_account_id` | string | Yes | - | Storage account that should be used for caching. Changing this forces a new resource to be created. |
| `target_resource_group_id` | string | Yes | - | Resource group disk should belong to when a failover is done. Changing this forces a new resource to be created. |
| `target_disk_type` | string | Yes | - | What type should the disk be when a failover is done. Possible values are 'Standard_LRS', 'Premium_LRS', 'StandardSSD_LRS' and 'UltraSSD_LRS'. Changing this forces a new resource to be created. |
| `target_replica_disk_type` | string | Yes | - | What type should the disk be that holds the replication data. Possible values are 'Standard_LRS', 'Premium_LRS', 'StandardSSD_LRS' and 'UltraSSD_LRS'. Changing this forces a new resource to be created. |
| `target_disk_encryption_set_id` | string | No | - | The Disk Encryption Set that the Managed Disk will be associated with. Changing this forces a new resource to be created. |
| `target_disk_encryption` | block | No | - | A 'target_disk_encryption' block. |

### `unmanaged_disk` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `disk_uri` | string | Yes | - | Id of disk that should be replicated. Changing this forces a new resource to be created. |
| `staging_storage_account_id` | string | Yes | - | Storage account that should be used for caching. Changing this forces a new resource to be created. |
| `target_storage_account_id` | string | Yes | - | Storage account disk should belong to when a failover is done. Changing this forces a new resource to be created. |

### `network_interface` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `source_network_interface_id` | string | No | - | (Required if the network_interface block is specified) Id source network interface. |
| `target_static_ip` | string | No | - | Static IP to assign when a failover is done. |
| `target_subnet_name` | string | No | - | Name of the subnet to to use when a failover is done. |
| `recovery_public_ip_address_id` | string | No | - | Id of the public IP object to use when a failover is done. |
| `failover_test_static_ip` | string | No | - | Static IP to assign when a test failover is done. |
| `failover_test_subnet_name` | string | No | - | Name of the subnet to to use when a test failover is done. |
| `failover_test_public_ip_address_id` | string | No | - | Id of the public IP object to use when a test failover is done. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Site Recovery Replicated VM. | 

Additionally, all variables are provided as outputs.
