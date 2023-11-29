# azurerm_orchestrated_virtual_machine_scale_set

Manages an Orchestrated Virtual Machine Scale Set.## Disclaimers-> **NOTE:** As of the **v2.86.0** (November 19, 2021) release of the provider this resource will only create Virtual Machine Scale Sets with the **Flexible** Orchestration Mode.-> **NOTE:** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).

## Variables

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **var.name** | string | True | -  |  -  | The name of the Orchestrated Virtual Machine Scale Set. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  | The Azure location where the Orchestrated Virtual Machine Scale Set should exist. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the Orchestrated Virtual Machine Scale Set should exist. Changing this forces a new resource to be created. | 
| **var.platform_fault_domain_count** | int | True | -  |  -  | Specifies the number of fault domains that are used by this Orchestrated Virtual Machine Scale Set. Changing this forces a new resource to be created. | 
| **var.sku_name** | string | False | -  |  -  | The `name` of the SKU to be used by this Orcestrated Virtual Machine Scale Set. Valid values include: any of the [General purpose](https://docs.microsoft.com/azure/virtual-machines/sizes-general), [Compute optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-compute), [Memory optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-memory), [Storage optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-storage), [GPU optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-gpu), [FPGA optimized](https://docs.microsoft.com/azure/virtual-machines/sizes-field-programmable-gate-arrays), [High performance](https://docs.microsoft.com/azure/virtual-machines/sizes-hpc), or [Previous generation](https://docs.microsoft.com/azure/virtual-machines/sizes-previous-gen) virtual machine SKUs. | 
| **var.additional_capabilities** | block | False | -  |  -  | An `additional_capabilities` block. | 
| **var.encryption_at_host_enabled** | bool | False | -  |  -  | Should disks attached to this Virtual Machine Scale Set be encrypted by enabling Encryption at Host? | 
| **var.instances** | int | False | -  |  -  | The number of Virtual Machines in the Orcestrated Virtual Machine Scale Set. | 
| **var.network_interface** | block | False | -  |  -  | One or more `network_interface` blocks. | 
| **var.os_profile** | block | False | -  |  -  | An `os_profile` block. | 
| **var.os_disk** | block | False | -  |  -  | An `os_disk` block. | 
| **var.automatic_instance_repair** | block | False | -  |  -  | An `automatic_instance_repair` block. | 
| **var.boot_diagnostics** | block | False | -  |  -  | A `boot_diagnostics` block. | 
| **var.capacity_reservation_group_id** | string | False | -  |  -  | Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created. | 
| **var.data_disk** | block | False | -  |  -  | One or more `data_disk` blocks. | 
| **var.extension** | block | False | -  |  -  | One or more `extension` blocks | 
| **var.extension_operations_enabled** | bool | False | `True`  |  `true`, `false`  | Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new Orchestrated Virtual Machine Scale Set to be created. | 
| **var.extensions_time_budget** | string | False | `PT1H30M`  |  -  | Specifies the time alloted for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`. | 
| **var.eviction_policy** | string | False | -  |  `Deallocate`, `Delete`  | The Policy which should be used Virtual Machines are Evicted from the Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created. | 
| **var.identity** | block | False | -  |  -  | An `identity` block. | 
| **var.license_type** | string | False | -  |  `None`, `Windows_Client`, `Windows_Server`  | Specifies the type of on-premise license (also known as Azure Hybrid Use Benefit) which should be used for this Orchestrated Virtual Machine Scale Set. Possible values are `None`, `Windows_Client` and `Windows_Server`. | 
| **var.max_bid_price** | string | False | `-1`  |  -  | The maximum price you're willing to pay for each Orchestrated Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the eviction_policy. Defaults to `-1`, which means that each Virtual Machine in the Orchestrated Scale Set should not be evicted for price reasons. | 
| **var.plan** | block | False | -  |  -  | A `plan` block. Changing this forces a new resource to be created. | 
| **var.priority** | string | False | `Regular`  |  `Regular`, `Spot`  | The Priority of this Orchestrated Virtual Machine Scale Set. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this value forces a new resource. | 
| **var.single_placement_group** | string | False | -  |  `true`, `false`  | Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Possible values are `true` or `false`. | 
| **var.source_image_id** | string | False | -  |  -  | The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s. | 
| **var.source_image_reference** | block | False | -  |  -  | A `source_image_reference` block. | 
| **var.termination_notification** | block | False | -  |  -  | A `termination_notification` block. | 
| **var.user_data_base64** | string | False | -  |  -  | The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set. | 
| **var.proximity_placement_group_id** | string | False | -  |  -  | The ID of the Proximity Placement Group which the Orchestrated Virtual Machine should be assigned to. Changing this forces a new resource to be created. | 
| **var.zone_balance** | bool | False | `False`  |  -  | Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created. | 
| **var.zones** | string | False | -  |  -  | Specifies a list of Availability Zones in which this Orchestrated Virtual Machine should be located. Changing this forces a new Orchestrated Virtual Machine to be created. | 
| **var.tags** | map | False | -  |  -  | A mapping of tags which should be assigned to this Orchestrated Virtual Machine Scale Set. | 
| **var.priority_mix** | block | False | -  |  -  | a `priority_mix` block | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **location** | string  | - | 
| **resource_group_name** | string  | - | 
| **platform_fault_domain_count** | int  | - | 
| **sku_name** | string  | - | 
| **additional_capabilities** | block  | - | 
| **encryption_at_host_enabled** | bool  | - | 
| **instances** | int  | - | 
| **network_interface** | block  | - | 
| **os_profile** | block  | - | 
| **os_disk** | block  | - | 
| **automatic_instance_repair** | block  | - | 
| **boot_diagnostics** | block  | - | 
| **capacity_reservation_group_id** | string  | - | 
| **data_disk** | block  | - | 
| **extension** | block  | - | 
| **extension_operations_enabled** | bool  | - | 
| **extensions_time_budget** | string  | - | 
| **eviction_policy** | string  | - | 
| **identity** | block  | - | 
| **license_type** | string  | - | 
| **max_bid_price** | string  | - | 
| **plan** | block  | - | 
| **priority** | string  | - | 
| **single_placement_group** | string  | - | 
| **source_image_id** | string  | - | 
| **source_image_reference** | block  | - | 
| **termination_notification** | block  | - | 
| **user_data_base64** | string  | - | 
| **proximity_placement_group_id** | string  | - | 
| **zone_balance** | bool  | - | 
| **zones** | string  | - | 
| **tags** | map  | - | 
| **priority_mix** | block  | - | 
| **id** | string  | The ID of the Orchestrated Virtual Machine Scale Set. | 
| **unique_id** | string  | The Unique ID for the Orchestrated Virtual Machine Scale Set. | 