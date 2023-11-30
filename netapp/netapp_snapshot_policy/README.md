# azurerm_netapp_snapshot_policy

Manages a NetApp Snapshot Policy.## NetApp Snapshot Policy Usage```hclresource "azurerm_resource_group" "example" {name     = "resource-group-01"location = "East US"}resource "azurerm_netapp_account" "example" {name                = "netappaccount-01"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.name}resource "azurerm_netapp_snapshot_policy" "example" {name                = "snapshotpolicy-01"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.nameaccount_name        = azurerm_netapp_account.example.nameenabled             = truehourly_schedule {snapshots_to_keep = 4minute            = 15}daily_schedule {snapshots_to_keep = 2hour              = 20minute            = 15}weekly_schedule {snapshots_to_keep = 1days_of_week      = ["Monday", "Friday"]hour              = 23minute            = 0}monthly_schedule {snapshots_to_keep = 1days_of_month     = [1, 15, 20, 30]hour              = 5minute            = 45}}```

## Variables

| Name | Type | Required? |  Description |
| ---- | ---- | --------- |  ----------- |
| **var.name** | string | True | The name of the NetApp Snapshot Policy. Changing this forces a new resource to be created. | 
| **var.resource_group_name** | string | True | The name of the resource group where the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created. | 
| **var.location** | string | True | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **var.account_name** | string | True | The name of the NetApp Account in which the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created. | 
| **var.enabled** | bool | True | Defines that the NetApp Snapshot Policy is enabled or not. | 
| **var.hourly_schedule** | block | False | Sets an hourly snapshot schedule. A `hourly_schedule` block. | 
| **var.daily_schedule** | block | False | Sets a daily snapshot schedule. A `daily_schedule` block. | 
| **var.weekly_schedule** | block | False | Sets a weekly snapshot schedule. A `weekly_schedule` block. | 
| **var.monthly_schedule** | block | False | Sets a monthly snapshot schedule. A `monthly_schedule` block. | 
| **var.tags** | map | False | A mapping of tags to assign to the resource. | 



## Outputs

| Name | Type | Description |
| ---- | ---- | --------- | 
| **name** | string  | - | 
| **resource_group_name** | string  | - | 
| **location** | string  | - | 
| **account_name** | string  | - | 
| **enabled** | bool  | - | 
| **hourly_schedule** | block  | - | 
| **daily_schedule** | block  | - | 
| **weekly_schedule** | block  | - | 
| **monthly_schedule** | block  | - | 
| **tags** | map  | - | 
| **id** | string  | The ID of the NetApp Snapshot. | 
| **name** | string  | The name of the NetApp Snapshot Policy. Changing this forces a new resource to be created. | 
| **resource_group_name** | string  | The name of the resource group where the NetApp Snapshot Policy should be created. | 
| **location** | string  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **account_name** | string  | The name of the NetApp Account in which the NetApp Snapshot Policy was created. Changing this forces a new resource to be created. | 
| **enabled** | bool  | Defines that the NetApp Snapshot Policy is enabled or not. | 
| **hourly_schedule** | string  | Hourly snapshot schedule. | 
| **daily_schedule** | string  | Daily snapshot schedule. | 
| **weekly_schedule** | string  | Weekly snapshot schedule. | 
| **monthly_schedule** | string  | Monthly snapshot schedule. | 

## Example minimal hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "netapp/netapp_snapshot_policy" 
}

inputs = {
   name = "name of netapp_snapshot_policy" 
   resource_group_name = "${resource_group}" 
   location = "${location}" 
   account_name = "account_name of netapp_snapshot_policy" 
   enabled = "enabled of netapp_snapshot_policy" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```