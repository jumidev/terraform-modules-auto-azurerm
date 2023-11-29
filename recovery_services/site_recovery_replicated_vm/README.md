# azurerm_site_recovery_replicated_vm

Manages a VM replicated using Azure Site Recovery (Azure to Azure only). A replicated VM keeps a copiously updated image of the VM in another region in order to be able to start the VM in that region in case of a disaster.

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the replication for the replicated VM. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created. | 
| **var.recovery_vault_name** | string | True | -  |  -  | The name of the vault that should be updated. Changing this forces a new resource to be created. | 
| **var.recovery_replication_policy_id** | string | True | -  |  -  | Id of the policy to use for this replicated vm. Changing this forces a new resource to be created. | 
| **var.source_recovery_fabric_name** | string | True | -  |  -  | Name of fabric that should contain this replication. Changing this forces a new resource to be created. | 
| **var.source_vm_id** | string | True | -  |  -  | Id of the VM to replicate Changing this forces a new resource to be created. | 
| **var.source_recovery_protection_container_name** | string | True | -  |  -  | Name of the protection container to use. Changing this forces a new resource to be created. | 
| **var.target_resource_group_id** | string | True | -  |  -  | Id of resource group where the VM should be created when a failover is done. Changing this forces a new resource to be created. | 
| **var.target_recovery_fabric_id** | string | True | -  |  -  | Id of fabric where the VM replication should be handled when a failover is done. Changing this forces a new resource to be created. | 
| **var.target_recovery_protection_container_id** | string | True | -  |  -  | Id of protection container where the VM replication should be created when a failover is done. Changing this forces a new resource to be created. | 
| **var.target_availability_set_id** | string | False | -  |  -  | Id of availability set that the new VM should belong to when a failover is done. | 
| **var.target_zone** | string | False | -  |  -  | Specifies the Availability Zone where the Failover VM should exist. Changing this forces a new resource to be created. | 
| **var.managed_disk** | block | False | -  |  -  | One or more `managed_disk` block. Changing this forces a new resource to be created. | 
| **var.unmanaged_disk** | block | False | -  |  -  | One or more `unmanaged_disk` block. Changing this forces a new resource to be created. | 
| **var.target_edge_zone** | string | False | -  |  -  | Specifies the Edge Zone within the Azure Region where this Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created. | 
| **var.target_proximity_placement_group_id** | string | False | -  |  -  | Id of Proximity Placement Group the new VM should belong to when a failover is done. | 
| **var.target_boot_diagnostic_storage_account_id** | string | False | -  |  -  | Id of the storage account which the new VM should used for boot diagnostic when a failover is done. | 
| **var.target_capacity_reservation_group_id** | string | False | -  |  -  | Id of the Capacity reservation group where the new VM should belong to when a failover is done. | 
| **var.target_virtual_machine_scale_set_id** | string | False | -  |  -  | Id of the Virtual Machine Scale Set which the new Vm should belong to when a failover is done. | 
| **var.target_network_id** | string | False | -  |  -  | Network to use when a failover is done (recommended to set if any network_interface is configured for failover). | 
| **var.test_network_id** | string | False | -  |  -  | Network to use when a test failover is done. | 
| **var.network_interface** | block | False | -  |  -  | One or more `network_interface` block. | 
| **var.multi_vm_group_name** | string | False | -  |  -  | Name of group in which all machines will replicate together and have shared crash consistent and app-consistent recovery points when failed over. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **recovery_vault_name** | string  | - | 
| **recovery_replication_policy_id** | string  | - | 
| **source_recovery_fabric_name** | string  | - | 
| **source_vm_id** | string  | - | 
| **source_recovery_protection_container_name** | string  | - | 
| **target_resource_group_id** | string  | - | 
| **target_recovery_fabric_id** | string  | - | 
| **target_recovery_protection_container_id** | string  | - | 
| **target_availability_set_id** | string  | - | 
| **target_zone** | string  | - | 
| **managed_disk** | block  | - | 
| **unmanaged_disk** | block  | - | 
| **target_edge_zone** | string  | - | 
| **target_proximity_placement_group_id** | string  | - | 
| **target_boot_diagnostic_storage_account_id** | string  | - | 
| **target_capacity_reservation_group_id** | string  | - | 
| **target_virtual_machine_scale_set_id** | string  | - | 
| **target_network_id** | string  | - | 
| **test_network_id** | string  | - | 
| **network_interface** | block  | - | 
| **multi_vm_group_name** | string  | - | 
| **id** | string  | The ID of the Site Recovery Replicated VM. | 