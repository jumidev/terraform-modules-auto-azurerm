# azurerm_netapp_volume_quota_rule

Manages a Volume Quota Rule.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "netapp/netapp_volume_quota_rule"   
}

inputs = {
   location = "${location}"   
   name = "The name which should be used for this Volume Quota Rule..."   
   volume_id = "The NetApp volume ID where the Volume Quota Rule is assigned to..."   
   quota_size_in_kib = "Quota size in kibibytes"   
   quota_type = "Quota type"   
}

tfstate_store = {
   storage_account = "${storage_account}"   
   container = "${container}"   
   container_path = "${COMPONENT_PATH}"   
}

```

## Required Variables

| Name | Type |  possible values |  Description |
| ---- | --------- |  ----------- | ----------- |
| **location** | string |  -  |  The Azure Region where the Volume Quota Rule should exist. Changing this forces a new Volume Quota Rule to be created. | 
| **name** | string |  -  |  The name which should be used for this Volume Quota Rule. Changing this forces a new Volume Quota Rule to be created. | 
| **volume_id** | string |  -  |  The NetApp volume ID where the Volume Quota Rule is assigned to. Changing this forces a new resource to be created. | 
| **quota_size_in_kib** | string |  -  |  Quota size in kibibytes. | 
| **quota_type** | string |  `DefaultGroupQuota`, `DefaultUserQuota`, `IndividualGroupQuota`, `IndividualUserQuota`  |  Quota type. Possible values are `DefaultGroupQuota`, `DefaultUserQuota`, `IndividualGroupQuota` and `IndividualUserQuota`. Please note that `IndividualGroupQuota` and `DefaultGroupQuota` are not applicable to SMB and dual-protocol volumes. Changing this forces a new resource to be created. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **quota_target** | string |  Quota Target. This can be Unix UID/GID for NFSv3/NFSv4.1 volumes and Windows User SID for CIFS based volumes. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Volume Quota Rule. | 

Additionally, all variables are provided as outputs.
