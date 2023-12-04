# azurerm_netapp_snapshot_policy

Manages a NetApp Snapshot Policy.## NetApp Snapshot Policy Usage```hclresource "azurerm_resource_group" "example" {name     = "resource-group-01"location = "East US"}resource "azurerm_netapp_account" "example" {name                = "netappaccount-01"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.name}resource "azurerm_netapp_snapshot_policy" "example" {name                = "snapshotpolicy-01"location            = azurerm_resource_group.example.locationresource_group_name = azurerm_resource_group.example.nameaccount_name        = azurerm_netapp_account.example.nameenabled             = truehourly_schedule {snapshots_to_keep = 4minute            = 15}daily_schedule {snapshots_to_keep = 2hour              = 20minute            = 15}weekly_schedule {snapshots_to_keep = 1days_of_week      = ["Monday", "Friday"]hour              = 23minute            = 0}monthly_schedule {snapshots_to_keep = 1days_of_month     = [1, 15, 20, 30]hour              = 5minute            = 45}}```

## Example `component.hclt`

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

## Required Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **name** | string |  The name of the NetApp Snapshot Policy. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  The name of the resource group where the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created. | 
| **location** | string |  Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **account_name** | string |  The name of the NetApp Account in which the NetApp Snapshot Policy should be created. Changing this forces a new resource to be created. | 
| **enabled** | bool |  Defines that the NetApp Snapshot Policy is enabled or not. | 

## Optional Variables

| Name | Type |  Description |
| ---- | --------- |  ----------- |
| **hourly_schedule** | [block](#hourly_schedule-block-structure) |  Sets an hourly snapshot schedule. A `hourly_schedule` block. | 
| **daily_schedule** | [block](#daily_schedule-block-structure) |  Sets a daily snapshot schedule. A `daily_schedule` block. | 
| **weekly_schedule** | [block](#weekly_schedule-block-structure) |  Sets a weekly snapshot schedule. A `weekly_schedule` block. | 
| **monthly_schedule** | [block](#monthly_schedule-block-structure) |  Sets a monthly snapshot schedule. A `monthly_schedule` block. | 
| **tags** | map |  A mapping of tags to assign to the resource. | 

### `hourly_schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `snapshots_to_keep` | string | Yes | - | How many hourly snapshots to keep, valid range is from 0 to 255. |
| `minute` | string | Yes | - | Minute of the hour that the snapshots will be created, valid range is from 0 to 59. |

### `weekly_schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `snapshots_to_keep` | string | Yes | - | How many hourly snapshots to keep, valid range is from 0 to 255. |
| `days_of_week` | int | Yes | - | List of the week days using English names when the snapshots will be created. |
| `hour` | string | Yes | - | Hour of the day that the snapshots will be created, valid range is from 0 to 23. |
| `minute` | string | Yes | - | Minute of the hour that the snapshots will be created, valid range is from 0 to 59. |

### `daily_schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `snapshots_to_keep` | string | Yes | - | How many hourly snapshots to keep, valid range is from 0 to 255. |
| `hour` | string | Yes | - | Hour of the day that the snapshots will be created, valid range is from 0 to 23. |
| `minute` | string | Yes | - | Minute of the hour that the snapshots will be created, valid range is from 0 to 59. |

### `monthly_schedule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `snapshots_to_keep` | string | Yes | - | How many hourly snapshots to keep, valid range is from 0 to 255. |
| `days_of_month` | int | Yes | - | List of the days of the month when the snapshots will be created, valid range is from 1 to 30. |
| `hour` | string | Yes | - | Hour of the day that the snapshots will be created, valid range is from 0 to 23. |
| `minute` | string | Yes | - | Minute of the hour that the snapshots will be created, valid range is from 0 to 59. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the NetApp Snapshot. | 
| **name** | string | No  | The name of the NetApp Snapshot Policy. Changing this forces a new resource to be created. | 
| **resource_group_name** | string | No  | The name of the resource group where the NetApp Snapshot Policy should be created. | 
| **location** | string | No  | Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | 
| **account_name** | string | No  | The name of the NetApp Account in which the NetApp Snapshot Policy was created. Changing this forces a new resource to be created. | 
| **enabled** | bool | No  | Defines that the NetApp Snapshot Policy is enabled or not. | 
| **hourly_schedule** | string | No  | Hourly snapshot schedule. | 
| **daily_schedule** | string | No  | Daily snapshot schedule. | 
| **weekly_schedule** | string | No  | Weekly snapshot schedule. | 
| **monthly_schedule** | string | No  | Monthly snapshot schedule. | 

Additionally, all variables are provided as outputs.
