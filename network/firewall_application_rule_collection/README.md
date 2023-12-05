# azurerm_firewall_application_rule_collection

Manages an Application Rule Collection within an Azure Firewall.

## Example `component.hclt`

```hcl
source = {
   repo = "https://github.com/jumidev/terraform-modules-auto-azurerm.git"   
   path = "network/firewall_application_rule_collection"   
}

inputs = {
   name = "name of firewall_application_rule_collection"   
   # azure_firewall_name → set in tfstate_inputs
   resource_group_name = "${resource_group}"   
   priority = "priority of firewall_application_rule_collection"   
   action = "action of firewall_application_rule_collection"   
   rule = {
      this_rule = {
         name = "..."         
      }
      
   }
   
}

tfstate_inputs = {
   azure_firewall_name = "path/to/firewall_component:name"   
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
| **name** | string |  -  |  Specifies the name of the Application Rule Collection which must be unique within the Firewall. Changing this forces a new resource to be created. | 
| **azure_firewall_name** | string |  -  |  Specifies the name of the Firewall in which the Application Rule Collection should be created. Changing this forces a new resource to be created. | 
| **resource_group_name** | string |  -  |  Specifies the name of the Resource Group in which the Firewall exists. Changing this forces a new resource to be created. | 
| **priority** | string |  `100`, `65000`  |  Specifies the priority of the rule collection. Possible values are between `100` - `65000`. | 
| **action** | string |  `Allow`, `Deny`  |  Specifies the action the rule will apply to matching traffic. Possible values are `Allow` and `Deny`. | 
| **rule** | [block](#rule-block-structure) |  -  |  One or more `rule` blocks. | 

### `rule` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `name` | string | Yes | - | Specifies the name of the rule. |
| `description` | string | No | - | Specifies a description for the rule. |
| `source_addresses` | list | No | - | A list of source IP addresses and/or IP ranges. |
| `source_ip_groups` | list | No | - | A list of source IP Group IDs for the rule. |
| `fqdn_tags` | string | No | - | A list of FQDN tags. Possible values are 'AppServiceEnvironment', 'AzureBackup', 'AzureKubernetesService', 'HDInsight', 'MicrosoftActiveProtectionService', 'WindowsDiagnostics', 'WindowsUpdate' and 'WindowsVirtualDesktop'. |
| `target_fqdns` | list | No | - | A list of FQDNs. |
| `protocol` | [block](#rule-block-structure) | No | - | One or more 'protocol' blocks. |

### `protocol` block structure

| Name | Type | Required? | Default | Description |
| ---- | ---- | --------- | ------- | ----------- |
| `port` | string | Yes | - | Specify a port for the connection. |
| `type` | string | Yes | - | Specifies the type of connection. Possible values are 'Http', 'Https' and 'Mssql'. |



## Outputs

| Name | Type | Sensitive? | Description |
| ---- | ---- | --------- | --------- |

Additionally, all variables are provided as outputs.
