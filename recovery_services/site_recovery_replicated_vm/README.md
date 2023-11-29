# azurerm_site_recovery_replicated_vm

Manages a VM replicated using Azure Site Recovery (Azure to Azure only). A replicated VM keeps a copiously updated image of the VM in another region in order to be able to start the VM in that region in case of a disaster.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the replication for the replicated VM. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | Name of the resource group where the vault that should be updated is located. Changing this forces a new resource to be created. | 
| **recovery_vault_name** | string | True | -  |  -  | The name of the vault that should be updated. Changing this forces a new resource to be created. | 
| **recovery_replication_policy_id** | string | True | -  |  -  | Id of the policy to use for this replicated vm. Changing this forces a new resource to be created. | 
| **source_recovery_fabric_name** | string | True | -  |  -  | Name of fabric that should contain this replication. Changing this forces a new resource to be created. | 
| **source_vm_id** | string | True | -  |  -  | Id of the VM to replicate Changing this forces a new resource to be created. | 
| **source_recovery_protection_container_name** | string | True | -  |  -  | Name of the protection container to use. Changing this forces a new resource to be created. | 
| **target_resource_group_id** | string | True | -  |  -  | Id of resource group where the VM should be created when a failover is done. Changing this forces a new resource to be created. | 
| **target_recovery_fabric_id** | string | True | -  |  -  | Id of fabric where the VM replication should be handled when a failover is done. Changing this forces a new resource to be created. | 
| **target_recovery_protection_container_id** | string | True | -  |  -  | Id of protection container where the VM replication should be created when a failover is done. Changing this forces a new resource to be created. | 
| **target_availability_set_id** | string | False | -  |  -  | Id of availability set that the new VM should belong to when a failover is done. | 
| **target_zone** | string | False | -  |  -  | Specifies the Availability Zone where the Failover VM should exist. Changing this forces a new resource to be created. | 
| **managed_disk** | block | False | -  |  -  | One or more `managed_disk` block. Changing this forces a new resource to be created. | 
| **unmanaged_disk** | block | False | -  |  -  | One or more `unmanaged_disk` block. Changing this forces a new resource to be created. | 
| **target_edge_zone** | string | False | -  |  -  | Specifies the Edge Zone within the Azure Region where this Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created. | 
| **target_proximity_placement_group_id** | string | False | -  |  -  | Id of Proximity Placement Group the new VM should belong to when a failover is done. | 
| **target_boot_diagnostic_storage_account_id** | string | False | -  |  -  | Id of the storage account which the new VM should used for boot diagnostic when a failover is done. | 
| **target_capacity_reservation_group_id** | string | False | -  |  -  | Id of the Capacity reservation group where the new VM should belong to when a failover is done. | 
| **target_virtual_machine_scale_set_id** | string | False | -  |  -  | Id of the Virtual Machine Scale Set which the new Vm should belong to when a failover is done. | 
| **target_network_id** | string | False | -  |  -  | Network to use when a failover is done (recommended to set if any network_interface is configured for failover). | 
| **test_network_id** | string | False | -  |  -  | Network to use when a test failover is done. | 
| **network_interface** | block | False | -  |  -  | One or more `network_interface` block. | 
| **multi_vm_group_name** | string | False | -  |  -  | Name of group in which all machines will replicate together and have shared crash consistent and app-consistent recovery points when failed over. | 

