# azurerm_netapp_snapshot_policy

Manages a NetApp Snapshot Policy.## NetApp Snapshot Policy Usage```hclresource "azurerm_resource_group" "example" {name     = "resource-group-01"location = "East US"}resource "azurerm_netapp_account" "example" {name                = "netappaccount-01"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.name}resource "azurerm_netapp_snapshot_policy" "example" {name                = "snapshotpolicy-01"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.nameaccount_name        = azurerm_netapp_account.example.nameenabled             = truehourly_schedule {snapshots_to_keep = 4minute            = 15}daily_schedule {snapshots_to_keep = 2hour              = 20minute            = 15}weekly_schedule {snapshots_to_keep = 1days_of_week      = ["Monday", "Friday"]hour              = 23minute            = 0}monthly_schedule {snapshots_to_keep = 1days_of_month     = [1, 15, 20, 30]hour              = 5minute            = 45}}```

## Attributes

| Name | Type | Required? | Default  | possible values | Description |
| ---- | ---- | --------- | -------- | ----------- | ----------- |
| **name** | string | True | -  |  -  | The name of the NetApp Snapshot Policy. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | True | -  |  -  | The name of the resource group where the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created. | 
| **location** | string | True | -  |  -  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **account_name** | string | True | -  |  -  | The name of the NetApp Account in which the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created. | 
| **enabled** | bool | True | -  |  -  | Defines that the NetApp Snapshot Policy is enabled or not. | 
| **hourly_schedule** | block | False | -  |  -  | Sets an hourly snapshot schedule. A `hourly_schedule` block. | 
| **daily_schedule** | block | False | -  |  -  | Sets a daily snapshot schedule. A `daily_schedule` block. | 
| **weekly_schedule** | block | False | -  |  -  | Sets a weekly snapshot schedule. A `weekly_schedule` block. | 
| **monthly_schedule** | block | False | -  |  -  | Sets a monthly snapshot schedule. A `monthly_schedule` block. | 
| **tags** | map | False | -  |  -  | A mapping of tags to assign to the resource. | 

