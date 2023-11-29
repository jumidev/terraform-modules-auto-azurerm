# azurerm_linux_virtual_machine_scale_set

Manages a Linux Virtual Machine Scale Set.## Disclaimers-> **NOTE:** As of the **v2.86.0** (November 19, 2021) release of the provider this resource will only create Virtual Machine Scale Sets with the **Uniform** Orchestration Mode. For Virtual Machine Scale Sets with **Flexible** orchestration mode, use [`azurerm_orchestrated_virtual_machine_scale_set`](orchestrated_virtual_machine_scale_set.html). Flexible orchestration mode is recommended for workloads on Azure.-> **NOTE:** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).-> **NOTE:** Terraform will automatically update & reimage the nodes in the Scale Set (if Required) during an Update - this behaviour can be configured [using the `features` setting within the Provider block](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block).

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the Linux Virtual Machine Scale Set. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | The Azure location where the Linux Virtual Machine Scale Set should exist. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the Resource Group in which the Linux Virtual Machine Scale Set should be exist. Changing this forces a new resource to be created. | 
| **admin_username** | string | True | -  |  -  | The username of the local administrator on each Virtual Machine Scale Set instance. Changing this forces a new resource to be created. | 
| **instances** | int | False | `0`  |  -  | The number of Virtual Machines in the Scale Set. Defaults to `0`. | 
| **sku** | string | True | -  |  -  | The Virtual Machine SKU for the Scale Set, such as `Standard_F2`. | 
| **network_interface** | block | True | -  |  -  | One or more `network_interface` blocks. | 
| **os_disk** | block | True | -  |  -  | An `os_disk` block. | 
| **additional_capabilities** | block | False | -  |  -  | An `additional_capabilities` block. | 
| **admin_password** | string | False | -  |  -  | The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created. | 
| **admin_ssh_key** | block | False | -  |  -  | One or more `admin_ssh_key` blocks. | 
| **automatic_os_upgrade_policy** | block | False | -  |  -  | An `automatic_os_upgrade_policy` block. This can only be specified when `upgrade_mode` is set to either `Automatic` or `Rolling`. | 
| **automatic_instance_repair** | block | False | -  |  -  | An `automatic_instance_repair` block. To enable the automatic instance repair, this Virtual Machine Scale Set must have a valid `health_probe_id` or an [Application Health Extension](https://docs.microsoft.com/azure/virtual-machine-scale-sets/virtual-machine-scale-sets-health-extension). | 
| **boot_diagnostics** | block | False | -  |  -  | A `boot_diagnostics` block. | 
| **capacity_reservation_group_id** | string | False | -  |  -  | Specifies the ID of the Capacity Reservation Group which the Virtual Machine Scale Set should be allocated to. Changing this forces a new resource to be created. | 
| **computer_name_prefix** | string | False | `name`  |  -  | The prefix which should be used for the name of the Virtual Machines in this Scale Set. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name_prefix`, then you must specify `computer_name_prefix`. Changing this forces a new resource to be created. | 
| **custom_data** | string | False | -  |  -  | The Base64-Encoded Custom Data which should be used for this Virtual Machine Scale Set. | 
| **data_disk** | block | False | -  |  -  | One or more `data_disk` blocks. | 
| **disable_password_authentication** | bool | False | `True`  |  -  | Should Password Authentication be disabled on this Virtual Machine Scale Set? Defaults to `true`. | 
| **do_not_run_extensions_on_overprovisioned_machines** | bool | False | `False`  |  -  | Should Virtual Machine Extensions be run on Overprovisioned Virtual Machines in the Scale Set? Defaults to `false`. | 
| **edge_zone** | string | False | -  |  -  | Specifies the Edge Zone within the Azure Region where this Linux Virtual Machine Scale Set should exist. Changing this forces a new Linux Virtual Machine Scale Set to be created. | 
| **encryption_at_host_enabled** | bool | False | -  |  -  | Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host? | 
| **extension** | block | False | -  |  -  | One or more `extension` blocks | 
| **extension_operations_enabled** | bool | False | `True`  |  `true`, `false`  | Should extension operations be allowed on the Virtual Machine Scale Set? Possible values are `true` or `false`. Defaults to `true`. Changing this forces a new Linux Virtual Machine Scale Set to be created. | 
| **extensions_time_budget** | string | False | `PT1H30M`  |  -  | Specifies the duration allocated for all extensions to start. The time duration should be between `15` minutes and `120` minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`. | 
| **eviction_policy** | string | False | -  |  `Deallocate`, `Delete`  | Specifies the eviction policy for Virtual Machines in this Scale Set. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created. | 
| **gallery_application** | block | False | -  |  -  | One or more `gallery_application` blocks. | 
| **health_probe_id** | string | False | -  |  -  | The ID of a Load Balancer Probe which should be used to determine the health of an instance. This is Required and can only be specified when `upgrade_mode` is set to `Automatic` or `Rolling`. | 
| **host_group_id** | string | False | -  |  -  | Specifies the ID of the dedicated host group that the virtual machine scale set resides in. Changing this forces a new resource to be created. | 
| **identity** | block | False | -  |  -  | An `identity` block. | 
| **max_bid_price** | string | False | `-1`  |  -  | The maximum price you're willing to pay for each Virtual Machine in this Scale Set, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machines in the Scale Set will be evicted using the `eviction_policy`. Defaults to `-1`, which means that each Virtual Machine in this Scale Set should not be evicted for price reasons. | 
| **overprovision** | bool | False | `True`  |  -  | Should Azure over-provision Virtual Machines in this Scale Set? This means that multiple Virtual Machines will be provisioned and Azure will keep the instances which become available first - which improves provisioning success rates and improves deployment time. You're not billed for these over-provisioned VM's and they don't count towards the Subscription Quota. Defaults to `true`. | 
| **plan** | block | False | -  |  -  | A `plan` block. Changing this forces a new resource to be created. | 
| **platform_fault_domain_count** | int | False | -  |  -  | Specifies the number of fault domains that are used by this Linux Virtual Machine Scale Set. Changing this forces a new resource to be created. | 
| **priority** | string | False | `Regular`  |  `Regular`, `Spot`  | The Priority of this Virtual Machine Scale Set. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this value forces a new resource. | 
| **provision_vm_agent** | bool | False | `True`  |  -  | Should the Azure VM Agent be provisioned on each Virtual Machine in the Scale Set? Defaults to `true`. Changing this value forces a new resource to be created. | 
| **proximity_placement_group_id** | string | False | -  |  -  | The ID of the Proximity Placement Group in which the Virtual Machine Scale Set should be assigned to. Changing this forces a new resource to be created. | 
| **rolling_upgrade_policy** | block | False | -  |  -  | A `rolling_upgrade_policy` block. This is Required and can only be specified when `upgrade_mode` is set to `Automatic` or `Rolling`. Changing this forces a new resource to be created. | 
| **scale_in** | block | False | -  |  -  | A `scale_in` block. | 
| **secret** | block | False | -  |  -  | One or more `secret` blocks. | 
| **secure_boot_enabled** | bool | False | -  |  -  | Specifies whether secure boot should be enabled on the virtual machine. Changing this forces a new resource to be created. | 
| **single_placement_group** | bool | False | `True`  |  -  | Should this Virtual Machine Scale Set be limited to a Single Placement Group, which means the number of instances will be capped at 100 Virtual Machines. Defaults to `true`. | 
| **source_image_id** | string | False | -  |  -  | The ID of an Image which each Virtual Machine in this Scale Set should be based on. Possible Image ID types include `Image ID`, `Shared Image ID`, `Shared Image Version ID`, `Community Gallery Image ID`, `Community Gallery Image Version ID`, `Shared Gallery Image ID` and `Shared Gallery Image Version ID`. | 
| **source_image_reference** | block | False | -  |  -  | A `source_image_reference` block. | 
| **spot_restore** | block | False | -  |  -  | A `spot_restore` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags which should be assigned to this Virtual Machine Scale Set. | 
| **terminate_notification** | block | False | -  |  -  | A `terminate_notification` block. | 
| **termination_notification** | block | False | -  |  -  | A `termination_notification` block. | 
| **upgrade_mode** | string | False | `Manual`  |  `Automatic`, `Manual`, `Rolling`  | Specifies how Upgrades (e.g. changing the Image/SKU) should be performed to Virtual Machine Instances. Possible values are `Automatic`, `Manual` and `Rolling`. Defaults to `Manual`. Changing this forces a new resource to be created. | 
| **user_data** | string | False | -  |  -  | The Base64-Encoded User Data which should be used for this Virtual Machine Scale Set. | 
| **vtpm_enabled** | bool | False | -  |  -  | Specifies whether vTPM should be enabled on the virtual machine. Changing this forces a new resource to be created. | 
| **zone_balance** | bool | False | `False`  |  -  | Should the Virtual Machines in this Scale Set be strictly evenly distributed across Availability Zones? Defaults to `false`. Changing this forces a new resource to be created. | 
| **zones** | string | False | -  |  -  | Specifies a list of Availability Zones in which this Linux Virtual Machine Scale Set should be located. Changing this forces a new Linux Virtual Machine Scale Set to be created. | 

