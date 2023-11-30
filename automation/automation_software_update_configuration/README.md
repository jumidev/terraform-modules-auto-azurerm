# azurerm_automation_software_update_configuration

Manages an Automation Software Update Configuraion.

## Example minimal component.hclt

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git" 
   path = "automation/automation_software_update_configuration" 
}

inputs = {
   name = "name of automation_software_update_configuration" 
   automation_account_id = "automation_account_id of automation_software_update_configuration" 
   schedule = "schedule of automation_software_update_configuration" 
}

tfstate_store = {
   storage_account = "${storage_account}" 
   container = "${container}" 
   container_path = "${COMPONENT_PATH}" 
}


```

## Variables

| Name | Type | Required? |  Default  |  Description |
| ---- | ---- | --------- |  ----------- | ----------- |
| **var.name** | string | True | -  |  The name which should be used for this Automation. Changing this forces a new Automation to be created. | 
| **var.automation_account_id** | string | True | -  |  The ID of Automation Account to manage this Source Control. Changing this forces a new Automation Source Control to be created. | 
| **var.duration** | string | False | `PT2H`  |  Maximum time allowed for the software update configuration run. using format `PT[n]H[n]M[n]S` as per ISO8601. Defaults to `PT2H`. | 
| **var.linux** | block | False | -  |  A `linux` block. | 
| **var.windows** | block | False | -  |  A `windows` block. | 
| **var.virtual_machine_ids** | string | False | -  |  Specifies a list of Azure Resource IDs of azure virtual machines. | 
| **var.non_azure_computer_names** | string | False | -  |  Specifies a list of names of non-Azure machines for the software update configuration. | 
| **var.target** | block | False | -  |  A `target` blocks. | 
| **var.post_task** | block | False | -  |  A `post_task` blocks. | 
| **var.pre_task** | block | False | -  |  A `pre_task` blocks. | 
| **var.schedule** | block | True | -  |  A `schedule` blocks. | 



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |
| **id** | string | No  | The ID of the Automation Software Update Configuration. | 
| **error_code** | string | No  | The Error code when failed. | 
| **error_meesage** | string | No  | The Error message indicating why the operation failed. | 

Additionally, all variables are provided as outputs.
