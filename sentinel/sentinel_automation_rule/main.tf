

resource "azurerm_sentinel_automation_rule" "this" {

  ########################################
  # required vars
  ########################################
  name                       = var.name
  log_analytics_workspace_id = var.log_analytics_workspace_id
  display_name               = var.display_name
  order                      = var.order

  ########################################
  # optional vars
  ########################################

  dynamic "action_incident" { # var.action_incident
    for_each = var.action_incident != null ? var.action_incident : []
    content {
      order                  = lookup(action_incident.value, "order") # (Required) 
      status                 = lookup(action_incident.value, "status", null)
      classification         = lookup(action_incident.value, "classification", null)
      classification_comment = lookup(action_incident.value, "classification_comment", null)
      labels                 = lookup(action_incident.value, "labels", null)
      owner_id               = lookup(action_incident.value, "owner_id", null)
      severity               = lookup(action_incident.value, "severity", null)
    }
  }


  dynamic "action_playbook" { # var.action_playbook
    for_each = var.action_playbook != null ? var.action_playbook : []
    content {
      logic_app_id = lookup(action_playbook.value, "logic_app_id") # (Required) 
      order        = lookup(action_playbook.value, "order")        # (Required) 
      tenant_id    = lookup(action_playbook.value, "tenant_id", null)
    }
  }


  dynamic "condition" { # var.condition
    for_each = var.condition != null ? var.condition : []
    content {
      operator = lookup(condition.value, "operator") # (Required) possible values: Equals | NotEquals | Contains | NotContains | StartsWith | NotStartsWith | EndsWith | NotEndsWith
      property = lookup(condition.value, "property") # (Required) possible values: AccountAadTenantId | AccountAadUserId | AccountNTDomain | AccountName | AccountObjectGuid | AccountPUID | AccountSid | AccountUPNSuffix | AlertAnalyticRuleIds | AlertProductNames | AzureResourceResourceId | AzureResourceSubscriptionId | CloudApplicationAppId | CloudApplicationAppName | DNSDomainName | FileDirectory | FileHashValue | FileName | HostAzureID | HostNTDomain | HostName | HostNetBiosName | HostOSVersion | IPAddress | IncidentCustomDetailsKey | IncidentCustomDetailsValue | IncidentDescription | IncidentLabel | IncidentProviderName | IncidentRelatedAnalyticRuleIds | IncidentSeverity | IncidentStatus | IncidentTactics | IncidentTitle | IncidentUpdatedBySource | IoTDeviceId | IoTDeviceModel | IoTDeviceName | IoTDeviceOperatingSystem | IoTDeviceType | IoTDeviceVendor | MailMessageDeliveryAction | MailMessageDeliveryLocation | MailMessageP1Sender | MailMessageP2Sender | MailMessageRecipient | MailMessageSenderIP | MailMessageSubject | MailboxDisplayName | MailboxPrimaryAddress | MailboxUPN | MalwareCategory | MalwareName | ProcessCommandLine | ProcessId | RegistryKey | RegistryValueData | Url
      values   = lookup(condition.value, "values")   # (Required) 
    }
  }

  condition_json = var.condition_json
  enabled        = var.enabled # Default: True
  expiration     = var.expiration
  triggers_on    = var.triggers_on   # Default: Incidents
  triggers_when  = var.triggers_when # Default: Created
}
