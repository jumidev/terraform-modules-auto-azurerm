# azurerm_windows_virtual_machine

Manages a Windows Virtual Machine.## Disclaimers-> **Note** Terraform will automatically remove the OS Disk by default - this behaviour can be configured [using the `features` setting within the Provider block](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/features-block).~> **Note** All arguments including the administrator login and password will be stored in the raw state as plain-text. [Read more about sensitive data in state](/docs/state/sensitive-data.html).~> **Note** This resource does not support Unmanaged Disks. If you need to use Unmanaged Disks you can continue to use [the `azurerm_virtual_machine` resource](virtual_machine.html) instead.~> **Note** This resource does not support attaching existing OS Disks. You can instead [capture an image of the OS Disk](image.html) or continue to use [the `azurerm_virtual_machine` resource](virtual_machine.html) instead.~> In this release there's a known issue where the `public_ip_address` and `public_ip_addresses` fields may not be fully populated for Dynamic Public IP's.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "compute/windows_virtual_machine" 
}

inputs = {
   admin_password = "admin_password of windows_virtual_machine" 
   admin_username = "admin_username of windows_virtual_machine" 
   location = "${location}" 
   name = "name of windows_virtual_machine" 
   network_interface_ids = "network_interface_ids of windows_virtual_machine" 
   os_disk = "os_disk of windows_virtual_machine" 
   resource_group_name = "${resource_group}" 
   size = "size of windows_virtual_machine" 
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
| **var.admin_password** | string | True | -  |  -  |  The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created. | 
| **var.admin_username** | string | True | -  |  -  |  The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created. | 
| **var.location** | string | True | -  |  -  |  The Azure location where the Windows Virtual Machine should exist. Changing this forces a new resource to be created. | 
| **var.name** | string | True | -  |  -  |  The name of the Windows Virtual Machine. Changing this forces a new resource to be created. | 
| **var.network_interface_ids** | list | True | -  |  -  |  A list of Network Interface IDs which should be attached to this Virtual Machine. The first Network Interface ID in this list will be the Primary Network Interface on the Virtual Machine. | 
| **var.os_disk** | block | True | -  |  -  |  A `os_disk` block. | | `os_disk` block structure: || 
|   caching (string): (REQUIRED) The Type of Caching which should be used for the Internal OS Disk. Possible values are 'None', 'ReadOnly' and 'ReadWrite'. ||
|   storage_account_type (string): (REQUIRED) The Type of Storage Account which should back this the Internal OS Disk. Possible values are 'Standard_LRS', 'StandardSSD_LRS', 'Premium_LRS', 'StandardSSD_ZRS' and 'Premium_ZRS'. Changing this forces a new resource to be created. ||
|   diff_disk_settings (block): A 'diff_disk_settings' block. Changing this forces a new resource to be created. ||
|   disk_encryption_set_id (string): The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk. Conflicts with 'secure_vm_disk_encryption_set_id'. ||
|   disk_size_gb (int): The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine is sourced from. ||
|   name (string): The name which should be used for the Internal OS Disk. Changing this forces a new resource to be created. ||
|   secure_vm_disk_encryption_set_id (string): The ID of the Disk Encryption Set which should be used to Encrypt this OS Disk when the Virtual Machine is a Confidential VM. Conflicts with 'disk_encryption_set_id'. Changing this forces a new resource to be created. ||
|   security_encryption_type (string): Encryption Type when the Virtual Machine is a Confidential VM. Possible values are 'VMGuestStateOnly' and 'DiskWithVMGuestState'. Changing this forces a new resource to be created. ||
|   write_accelerator_enabled (bool): Should Write Accelerator be Enabled for this OS Disk? Defaults to 'false'. ||

| **var.resource_group_name** | string | True | -  |  -  |  The name of the Resource Group in which the Windows Virtual Machine should be exist. Changing this forces a new resource to be created. | 
| **var.size** | string | True | -  |  -  |  The SKU which should be used for this Virtual Machine, such as `Standard_F2`. | 
| **var.additional_capabilities** | block | False | -  |  -  |  A `additional_capabilities` block. | | `additional_capabilities` block structure: || 
|   ultra_ssd_enabled (bool): Should the capacity to enable Data Disks of the 'UltraSSD_LRS' storage account type be supported on this Virtual Machine? Defaults to 'false'. ||

| **var.additional_unattend_content** | block | False | -  |  -  |  One or more `additional_unattend_content` blocks. Changing this forces a new resource to be created. | | `additional_unattend_content` block structure: || 
|   content (string): (REQUIRED) The XML formatted content that is added to the unattend.xml file for the specified path and component. Changing this forces a new resource to be created. ||
|   setting (string): (REQUIRED) The name of the setting to which the content applies. Possible values are 'AutoLogon' and 'FirstLogonCommands'. Changing this forces a new resource to be created. ||

| **var.allow_extension_operations** | bool | False | `True`  |  -  |  Should Extension Operations be allowed on this Virtual Machine? Defaults to `true`. | 
| **var.availability_set_id** | string | False | -  |  -  |  Specifies the ID of the Availability Set in which the Virtual Machine should exist. Changing this forces a new resource to be created. | 
| **var.boot_diagnostics** | block | False | -  |  -  |  A `boot_diagnostics` block. | | `boot_diagnostics` block structure: || 
|   storage_account_uri (string): The Primary/Secondary Endpoint for the Azure Storage Account which should be used to store Boot Diagnostics, including Console Output and Screenshots from the Hypervisor. ||

| **var.bypass_platform_safety_checks_on_user_schedule_enabled** | bool | False | `False`  |  -  |  Specifies whether to skip platform scheduled patching when a user schedule is associated with the VM. Defaults to `false`. | 
| **var.capacity_reservation_group_id** | string | False | -  |  -  |  Specifies the ID of the Capacity Reservation Group which the Virtual Machine should be allocated to. | 
| **var.computer_name** | string | False | `name`  |  -  |  Specifies the Hostname which should be used for this Virtual Machine. If unspecified this defaults to the value for the `name` field. If the value of the `name` field is not a valid `computer_name`, then you must specify `computer_name`. Changing this forces a new resource to be created. | 
| **var.custom_data** | string | False | -  |  -  |  The Base64-Encoded Custom Data which should be used for this Virtual Machine. Changing this forces a new resource to be created. | 
| **var.dedicated_host_id** | string | False | -  |  -  |  The ID of a Dedicated Host where this machine should be run on. Conflicts with `dedicated_host_group_id`. | 
| **var.dedicated_host_group_id** | string | False | -  |  -  |  The ID of a Dedicated Host Group that this Windows Virtual Machine should be run within. Conflicts with `dedicated_host_id`. | 
| **var.edge_zone** | string | False | -  |  -  |  Specifies the Edge Zone within the Azure Region where this Windows Virtual Machine should exist. Changing this forces a new Windows Virtual Machine to be created. | 
| **var.enable_automatic_updates** | bool | False | `True`  |  -  |  Specifies if Automatic Updates are Enabled for the Windows Virtual Machine. Changing this forces a new resource to be created. Defaults to `true`. | 
| **var.encryption_at_host_enabled** | bool | False | -  |  -  |  Should all of the disks (including the temp disk) attached to this Virtual Machine be encrypted by enabling Encryption at Host? | 
| **var.eviction_policy** | string | False | -  |  `Deallocate`, `Delete`  |  Specifies what should happen when the Virtual Machine is evicted for price reasons when using a Spot instance. Possible values are `Deallocate` and `Delete`. Changing this forces a new resource to be created. | 
| **var.extensions_time_budget** | string | False | `PT1H30M`  |  -  |  Specifies the duration allocated for all extensions to start. The time duration should be between 15 minutes and 120 minutes (inclusive) and should be specified in ISO 8601 format. Defaults to `PT1H30M`. | 
| **var.gallery_application** | block | False | -  |  -  |  One or more `gallery_application` blocks. | | `gallery_application` block structure: || 
|   version_id (string): (REQUIRED) Specifies the Gallery Application Version resource ID. ||
|   configuration_blob_uri (string): Specifies the URI to an Azure Blob that will replace the default configuration for the package if provided. ||
|   order (string): Specifies the order in which the packages have to be installed. Possible values are between '0' and '2,147,483,647'. ||
|   tag (string): Specifies a passthrough value for more generic context. This field can be any valid 'string' value. ||

| **var.hotpatching_enabled** | bool | False | `False`  |  `true`, `false`  |  Should the VM be patched without requiring a reboot? Possible values are `true` or `false`. Defaults to `false`. For more information about hot patching please see the [product documentation](https://docs.microsoft.com/azure/automanage/automanage-hotpatch). | 
| **var.identity** | block | False | -  |  -  |  An `identity` block. | | `identity` block structure: || 
|   type (string): (REQUIRED) Specifies the type of Managed Service Identity that should be configured on this Windows Virtual Machine. Possible values are 'SystemAssigned', 'UserAssigned', 'SystemAssigned, UserAssigned' (to enable both). ||
|   identity_ids (string): Specifies a list of User Assigned Managed Identity IDs to be assigned to this Windows Virtual Machine. ||

| **var.license_type** | string | False | -  |  `None`, `Windows_Client`, `Windows_Server`  |  Specifies the type of on-premise license (also known as [Azure Hybrid Use Benefit](https://docs.microsoft.com/windows-server/get-started/azure-hybrid-benefit)) which should be used for this Virtual Machine. Possible values are `None`, `Windows_Client` and `Windows_Server`. | 
| **var.max_bid_price** | string | False | `-1`  |  -  |  The maximum price you're willing to pay for this Virtual Machine, in US Dollars; which must be greater than the current spot price. If this bid price falls below the current spot price the Virtual Machine will be evicted using the `eviction_policy`. Defaults to `-1`, which means that the Virtual Machine should not be evicted for price reasons. | 
| **var.patch_assessment_mode** | string | False | `ImageDefault`  |  `AutomaticByPlatform`, `ImageDefault`  |  Specifies the mode of VM Guest Patching for the Virtual Machine. Possible values are `AutomaticByPlatform` or `ImageDefault`. Defaults to `ImageDefault`. | 
| **var.patch_mode** | string | False | `AutomaticByOS`  |  `Manual`, `AutomaticByOS`, `AutomaticByPlatform`  |  Specifies the mode of in-guest patching to this Windows Virtual Machine. Possible values are `Manual`, `AutomaticByOS` and `AutomaticByPlatform`. Defaults to `AutomaticByOS`. For more information on patch modes please see the [product documentation](https://docs.microsoft.com/azure/virtual-machines/automatic-vm-guest-patching#patch-orchestration-modes). | 
| **var.plan** | block | False | -  |  -  |  A `plan` block. Changing this forces a new resource to be created. | | `plan` block structure: || 
|   name (string): (REQUIRED) Specifies the Name of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created. ||
|   product (string): (REQUIRED) Specifies the Product of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created. ||
|   publisher (string): (REQUIRED) Specifies the Publisher of the Marketplace Image this Virtual Machine should be created from. Changing this forces a new resource to be created. ||

| **var.platform_fault_domain** | string | False | `-1`  |  -  |  Specifies the Platform Fault Domain in which this Windows Virtual Machine should be created. Defaults to `-1`, which means this will be automatically assigned to a fault domain that best maintains balance across the available fault domains. Changing this forces a new Windows Virtual Machine to be created. | 
| **var.priority** | string | False | `Regular`  |  `Regular`, `Spot`  |  Specifies the priority of this Virtual Machine. Possible values are `Regular` and `Spot`. Defaults to `Regular`. Changing this forces a new resource to be created. | 
| **var.provision_vm_agent** | bool | False | `True`  |  -  |  Should the Azure VM Agent be provisioned on this Virtual Machine? Defaults to `true`. Changing this forces a new resource to be created. | 
| **var.proximity_placement_group_id** | string | False | -  |  -  |  The ID of the Proximity Placement Group which the Virtual Machine should be assigned to. | 
| **var.reboot_setting** | string | False | -  |  `Always`, `IfRequired`, `Never`  |  Specifies the reboot setting for platform scheduled patching. Possible values are `Always`, `IfRequired` and `Never`. | 
| **var.secret** | block | False | -  |  -  |  One or more `secret` blocks. | | `secret` block structure: || 
|   certificate (list): (REQUIRED) One or more 'certificate' blocks. ||
|   key_vault_id (string): (REQUIRED) The ID of the Key Vault from which all Secrets should be sourced. ||

| **var.secure_boot_enabled** | bool | False | -  |  -  |  Specifies if Secure Boot and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created. | 
| **var.source_image_id** | string | False | -  |  -  |  The ID of the Image which this Virtual Machine should be created from. Changing this forces a new resource to be created. Possible Image ID types include `Image ID`s, `Shared Image ID`s, `Shared Image Version ID`s, `Community Gallery Image ID`s, `Community Gallery Image Version ID`s, `Shared Gallery Image ID`s and `Shared Gallery Image Version ID`s. | 
| **var.source_image_reference** | block | False | -  |  -  |  A `source_image_reference` block. Changing this forces a new resource to be created. | | `source_image_reference` block structure: || 
|   publisher (string): (REQUIRED) Specifies the publisher of the image used to create the virtual machines. Changing this forces a new resource to be created. ||
|   offer (string): (REQUIRED) Specifies the offer of the image used to create the virtual machines. Changing this forces a new resource to be created. ||
|   sku (string): (REQUIRED) Specifies the SKU of the image used to create the virtual machines. Changing this forces a new resource to be created. ||
|   version (string): (REQUIRED) Specifies the version of the image used to create the virtual machines. Changing this forces a new resource to be created. ||

| **var.tags** | map | False | -  |  -  |  A mapping of tags which should be assigned to this Virtual Machine. | 
| **var.termination_notification** | block | False | -  |  -  |  A `termination_notification` block. | | `termination_notification` block structure: || 
|   enabled (bool): (REQUIRED) Should the termination notification be enabled on this Virtual Machine? ||
|   timeout (string): Length of time (in minutes, between '5' and '15') a notification to be sent to the VM on the instance metadata server till the VM gets deleted. The time duration should be specified in ISO 8601 format. Defaults to 'PT5M'. ||

| **var.timezone** | string | False | -  |  -  |  Specifies the Time Zone which should be used by the Virtual Machine, [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Changing this forces a new resource to be created. | 
| **var.user_data** | string | False | -  |  -  |  The Base64-Encoded User Data which should be used for this Virtual Machine. | 
| **var.virtual_machine_scale_set_id** | string | False | -  |  -  |  Specifies the Orchestrated Virtual Machine Scale Set that this Virtual Machine should be created within. Changing this forces a new resource to be created. | 
| **var.vtpm_enabled** | bool | False | -  |  -  |  Specifies if vTPM (virtual Trusted Platform Module) and Trusted Launch is enabled for the Virtual Machine. Changing this forces a new resource to be created. | 
| **var.winrm_listener** | block | False | -  |  -  |  One or more `winrm_listener` blocks. Changing this forces a new resource to be created. | | `winrm_listener` block structure: || 
|   protocol (string): (REQUIRED) Specifies the protocol of listener. Possible values are 'Http' or 'Https'. Changing this forces a new resource to be created. ||
|   certificate_url (string): The Secret URL of a Key Vault Certificate, which must be specified when 'protocol' is set to 'Https'. Changing this forces a new resource to be created. ||

| **var.zone** | string | False | -  |  -  |  * `zones` -  Specifies the Availability Zone in which this Windows Virtual Machine should be located. Changing this forces a new Windows Virtual Machine to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Windows Virtual Machine. | 
| **identity** | block | No  | An `identity` block. | 
| **private_ip_address** | string | No  | The Primary Private IP Address assigned to this Virtual Machine. | 
| **private_ip_addresses** | list | No  | A list of Private IP Addresses assigned to this Virtual Machine. | 
| **public_ip_address** | string | No  | The Primary Public IP Address assigned to this Virtual Machine. | 
| **public_ip_addresses** | list | No  | A list of the Public IP Addresses assigned to this Virtual Machine. | 
| **virtual_machine_id** | string | No  | A 128-bit identifier which uniquely identifies this Virtual Machine. | 
| **principal_id** | string | No  | The Principal ID associated with this Managed Service Identity. | 
| **tenant_id** | string | No  | The Tenant ID associated with this Managed Service Identity. | 

Additionally, all variables are provided as outputs.
