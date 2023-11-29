# azurerm_netapp_volume_quota_rule

Manages a Volume Quota Rule.

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **location** | string | True | -  |  -  | The Azure Region where the Volume Quota Rule should exist. Changing this forces a new Volume Quota Rule to be created. | 
| **name** | string | True | -  |  -  | The name which should be used for this Volume Quota Rule. Changing this forces a new Volume Quota Rule to be created. | 
| **volume_id** | string | True | -  |  -  | The NetApp volume ID where the Volume Quota Rule is assigned to. Changing this forces a new resource to be created. | 
| **quota_size_in_kib** | string | True | -  |  -  | Quota size in kibibytes. | 
| **quota_type** | string | True | -  |  `DefaultGroupQuota`, `DefaultUserQuota`, `IndividualGroupQuota`, `IndividualUserQuota`  | Quota type. Possible values are `DefaultGroupQuota`, `DefaultUserQuota`, `IndividualGroupQuota` and `IndividualUserQuota`. Please note that `IndividualGroupQuota` and `DefaultGroupQuota` are not applicable to SMB and dual-protocol volumes. Changing this forces a new resource to be created. | 
| **quota_target** | string | False | -  |  -  | Quota Target. This can be Unix UID/GID for NFSv3/NFSv4.1 volumes and Windows User SID for CIFS based volumes. Changing this forces a new resource to be created. | 

