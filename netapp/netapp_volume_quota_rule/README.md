# azurerm_netapp_volume_quota_rule

Manages a Volume Quota Rule.

## Variables

| Name | Type | Required? |  possible values |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.location** | string | True | -  |  The Azure Region where the Volume Quota Rule should exist. Changing this forces a new Volume Quota Rule to be created. | 
| **var.name** | string | True | -  |  The name which should be used for this Volume Quota Rule. Changing this forces a new Volume Quota Rule to be created. | 
| **var.volume_id** | string | True | -  |  The NetApp volume ID where the Volume Quota Rule is assigned to. Changing this forces a new resource to be created. | 
| **var.quota_size_in_kib** | string | True | -  |  Quota size in kibibytes. | 
| **var.quota_type** | string | True | `DefaultGroupQuota`, `DefaultUserQuota`, `IndividualGroupQuota`, `IndividualUserQuota`  |  Quota type. Possible values are `DefaultGroupQuota`, `DefaultUserQuota`, `IndividualGroupQuota` and `IndividualUserQuota`. Please note that `IndividualGroupQuota` and `DefaultGroupQuota` are not applicable to SMB and dual-protocol volumes. Changing this forces a new resource to be created. | 
| **var.quota_target** | string | False | -  |  Quota Target. This can be Unix UID/GID for NFSv3/NFSv4.1 volumes and Windows User SID for CIFS based volumes. Changing this forces a new resource to be created. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **location** | string  | - | 
| **name** | string  | - | 
| **volume_id** | string  | - | 
| **quota_size_in_kib** | string  | - | 
| **quota_type** | string  | - | 
| **quota_target** | string  | - | 
| **id** | string  | The ID of the Volume Quota Rule. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "netapp/netapp_volume_quota_rule" 
}

inputs = {
   location = "${location}" 
   name = "name of netapp_volume_quota_rule" 
   volume_id = "volume_id of netapp_volume_quota_rule" 
   quota_size_in_kib = "quota_size_in_kib of netapp_volume_quota_rule" 
   quota_type = "quota_type of netapp_volume_quota_rule" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```