data "azurerm_resource_group" "this" {
  name = var.resource_group_name
}


resource "azurerm_monitor_action_group" "this" {

  ########################################
  # required vars
  ########################################
  name                = var.name
  resource_group_name = data.azurerm_resource_group.this.name
  short_name          = var.short_name

  ########################################
  # optional vars
  ########################################
  enabled = var.enabled # Default: True

  dynamic "arm_role_receiver" { # var.arm_role_receiver
    for_each = var.arm_role_receiver != null ? var.arm_role_receiver : []
    content {
      name                    = arm_role_receiver.key
      role_id                 = lookup(arm_role_receiver.value, "role_id") # (Required) 
      use_common_alert_schema = lookup(arm_role_receiver.value, "use_common_alert_schema", null)
    }
  }


  dynamic "automation_runbook_receiver" { # var.automation_runbook_receiver
    for_each = var.automation_runbook_receiver != null ? var.automation_runbook_receiver : []
    content {
      name                    = automation_runbook_receiver.key
      automation_account_id   = lookup(automation_runbook_receiver.value, "automation_account_id") # (Required) 
      runbook_name            = lookup(automation_runbook_receiver.value, "runbook_name")          # (Required) 
      webhook_resource_id     = lookup(automation_runbook_receiver.value, "webhook_resource_id")   # (Required) 
      is_global_runbook       = lookup(automation_runbook_receiver.value, "is_global_runbook")     # (Required) 
      service_uri             = lookup(automation_runbook_receiver.value, "service_uri")           # (Required) 
      use_common_alert_schema = lookup(automation_runbook_receiver.value, "use_common_alert_schema", null)
    }
  }


  dynamic "azure_app_push_receiver" { # var.azure_app_push_receiver
    for_each = var.azure_app_push_receiver != null ? var.azure_app_push_receiver : []
    content {
      name          = azure_app_push_receiver.key
      email_address = lookup(azure_app_push_receiver.value, "email_address") # (Required) 
    }
  }


  dynamic "azure_function_receiver" { # var.azure_function_receiver
    for_each = var.azure_function_receiver != null ? var.azure_function_receiver : []
    content {
      name                     = azure_function_receiver.key
      function_app_resource_id = lookup(azure_function_receiver.value, "function_app_resource_id") # (Required) 
      function_name            = lookup(azure_function_receiver.value, "function_name")            # (Required) 
      http_trigger_url         = lookup(azure_function_receiver.value, "http_trigger_url")         # (Required) 
      use_common_alert_schema  = lookup(azure_function_receiver.value, "use_common_alert_schema", null)
    }
  }


  dynamic "email_receiver" { # var.email_receiver
    for_each = var.email_receiver != null ? var.email_receiver : []
    content {
      name                    = email_receiver.key
      email_address           = lookup(email_receiver.value, "email_address") # (Required) 
      use_common_alert_schema = lookup(email_receiver.value, "use_common_alert_schema", null)
    }
  }


  dynamic "event_hub_receiver" { # var.event_hub_receiver
    for_each = var.event_hub_receiver != null ? var.event_hub_receiver : []
    content {
      name                    = event_hub_receiver.key
      event_hub_id            = lookup(event_hub_receiver.value, "event_hub_id", null)
      event_hub_name          = lookup(event_hub_receiver.value, "event_hub_name", null)
      event_hub_namespace     = lookup(event_hub_receiver.value, "event_hub_namespace", null)
      subscription_id         = lookup(event_hub_receiver.value, "subscription_id", null)
      tenant_id               = lookup(event_hub_receiver.value, "tenant_id", null)
      use_common_alert_schema = lookup(event_hub_receiver.value, "use_common_alert_schema", null)
    }
  }


  dynamic "itsm_receiver" { # var.itsm_receiver
    for_each = var.itsm_receiver != null ? var.itsm_receiver : []
    content {
      name                 = itsm_receiver.key
      workspace_id         = lookup(itsm_receiver.value, "workspace_id")         # (Required) 
      connection_id        = lookup(itsm_receiver.value, "connection_id")        # (Required) 
      ticket_configuration = lookup(itsm_receiver.value, "ticket_configuration") # (Required) 
      region               = lookup(itsm_receiver.value, "region")               # (Required) 
    }
  }

  location = var.location # Default: global

  dynamic "logic_app_receiver" { # var.logic_app_receiver
    for_each = var.logic_app_receiver != null ? var.logic_app_receiver : []
    content {
      name                    = logic_app_receiver.key
      resource_id             = lookup(logic_app_receiver.value, "resource_id")  # (Required) 
      callback_url            = lookup(logic_app_receiver.value, "callback_url") # (Required) 
      use_common_alert_schema = lookup(logic_app_receiver.value, "use_common_alert_schema", null)
    }
  }


  dynamic "sms_receiver" { # var.sms_receiver
    for_each = var.sms_receiver != null ? var.sms_receiver : []
    content {
      name         = sms_receiver.key
      country_code = lookup(sms_receiver.value, "country_code") # (Required) 
      phone_number = lookup(sms_receiver.value, "phone_number") # (Required) 
    }
  }


  dynamic "voice_receiver" { # var.voice_receiver
    for_each = var.voice_receiver != null ? var.voice_receiver : []
    content {
      name         = voice_receiver.key
      country_code = lookup(voice_receiver.value, "country_code") # (Required) 
      phone_number = lookup(voice_receiver.value, "phone_number") # (Required) 
    }
  }


  dynamic "webhook_receiver" { # var.webhook_receiver
    for_each = var.webhook_receiver != null ? var.webhook_receiver : []
    content {
      name                    = webhook_receiver.key
      service_uri             = lookup(webhook_receiver.value, "service_uri") # (Required) 
      use_common_alert_schema = lookup(webhook_receiver.value, "use_common_alert_schema", null)

      dynamic "aad_auth" { # webhook_receiver.value.aad_auth
        for_each = webhook_receiver.value.aad_auth != null ? webhook_receiver.value.aad_auth : []
        content {
          object_id      = lookup(aad_auth.value, "object_id") # (Required) 
          identifier_uri = lookup(aad_auth.value, "identifier_uri", null)
          tenant_id      = lookup(aad_auth.value, "tenant_id", null)
        }
      }

    }
  }

  tags = var.tags
}
