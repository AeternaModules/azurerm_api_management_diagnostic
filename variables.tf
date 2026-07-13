variable "api_management_diagnostics" {
  description = <<EOT
Map of api_management_diagnostics, attributes below
Required:
    - api_management_logger_id
    - api_management_name
    - identifier
    - resource_group_name
Optional:
    - always_log_errors
    - http_correlation_protocol
    - log_client_ip
    - operation_name_format
    - sampling_percentage
    - verbosity
    - backend_request (block):
        - body_bytes (optional)
        - data_masking (optional, block):
            - headers (optional, block):
                - mode (required)
                - value (required)
            - query_params (optional, block):
                - mode (required)
                - value (required)
        - headers_to_log (optional)
    - backend_response (block):
        - body_bytes (optional)
        - data_masking (optional, block):
            - headers (optional, block):
                - mode (required)
                - value (required)
            - query_params (optional, block):
                - mode (required)
                - value (required)
        - headers_to_log (optional)
    - frontend_request (block):
        - body_bytes (optional)
        - data_masking (optional, block):
            - headers (optional, block):
                - mode (required)
                - value (required)
            - query_params (optional, block):
                - mode (required)
                - value (required)
        - headers_to_log (optional)
    - frontend_response (block):
        - body_bytes (optional)
        - data_masking (optional, block):
            - headers (optional, block):
                - mode (required)
                - value (required)
            - query_params (optional, block):
                - mode (required)
                - value (required)
        - headers_to_log (optional)
EOT

  type = map(object({
    api_management_logger_id  = string
    api_management_name       = string
    identifier                = string
    resource_group_name       = string
    always_log_errors         = optional(bool)
    http_correlation_protocol = optional(string)
    log_client_ip             = optional(bool)
    operation_name_format     = optional(string)
    sampling_percentage       = optional(number)
    verbosity                 = optional(string)
    backend_request = optional(object({
      body_bytes = optional(number)
      data_masking = optional(object({
        headers = optional(list(object({
          mode  = string
          value = string
        })))
        query_params = optional(list(object({
          mode  = string
          value = string
        })))
      }))
      headers_to_log = optional(set(string))
    }))
    backend_response = optional(object({
      body_bytes = optional(number)
      data_masking = optional(object({
        headers = optional(list(object({
          mode  = string
          value = string
        })))
        query_params = optional(list(object({
          mode  = string
          value = string
        })))
      }))
      headers_to_log = optional(set(string))
    }))
    frontend_request = optional(object({
      body_bytes = optional(number)
      data_masking = optional(object({
        headers = optional(list(object({
          mode  = string
          value = string
        })))
        query_params = optional(list(object({
          mode  = string
          value = string
        })))
      }))
      headers_to_log = optional(set(string))
    }))
    frontend_response = optional(object({
      body_bytes = optional(number)
      data_masking = optional(object({
        headers = optional(list(object({
          mode  = string
          value = string
        })))
        query_params = optional(list(object({
          mode  = string
          value = string
        })))
      }))
      headers_to_log = optional(set(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        contains(["applicationinsights", "azuremonitor"], v.identifier)
      )
    ])
    error_message = "must be one of: applicationinsights, azuremonitor"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        v.sampling_percentage == null || (v.sampling_percentage >= 0.0 && v.sampling_percentage <= 100.0)
      )
    ])
    error_message = "must be between 0.0 and 100.0"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        v.frontend_request == null || (v.frontend_request.body_bytes == null || (v.frontend_request.body_bytes >= 0 && v.frontend_request.body_bytes <= 8192))
      )
    ])
    error_message = "must be between 0 and 8192"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        v.frontend_request == null || (v.frontend_request.data_masking == null || (v.frontend_request.data_masking.query_params == null || alltrue([for item in v.frontend_request.data_masking.query_params : (length(item.value) > 0)])))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        v.frontend_request == null || (v.frontend_request.data_masking == null || (v.frontend_request.data_masking.headers == null || alltrue([for item in v.frontend_request.data_masking.headers : (length(item.value) > 0)])))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        v.frontend_response == null || (v.frontend_response.body_bytes == null || (v.frontend_response.body_bytes >= 0 && v.frontend_response.body_bytes <= 8192))
      )
    ])
    error_message = "must be between 0 and 8192"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        v.frontend_response == null || (v.frontend_response.data_masking == null || (v.frontend_response.data_masking.query_params == null || alltrue([for item in v.frontend_response.data_masking.query_params : (length(item.value) > 0)])))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        v.frontend_response == null || (v.frontend_response.data_masking == null || (v.frontend_response.data_masking.headers == null || alltrue([for item in v.frontend_response.data_masking.headers : (length(item.value) > 0)])))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        v.backend_request == null || (v.backend_request.body_bytes == null || (v.backend_request.body_bytes >= 0 && v.backend_request.body_bytes <= 8192))
      )
    ])
    error_message = "must be between 0 and 8192"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        v.backend_request == null || (v.backend_request.data_masking == null || (v.backend_request.data_masking.query_params == null || alltrue([for item in v.backend_request.data_masking.query_params : (length(item.value) > 0)])))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        v.backend_request == null || (v.backend_request.data_masking == null || (v.backend_request.data_masking.headers == null || alltrue([for item in v.backend_request.data_masking.headers : (length(item.value) > 0)])))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        v.backend_response == null || (v.backend_response.body_bytes == null || (v.backend_response.body_bytes >= 0 && v.backend_response.body_bytes <= 8192))
      )
    ])
    error_message = "must be between 0 and 8192"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        v.backend_response == null || (v.backend_response.data_masking == null || (v.backend_response.data_masking.query_params == null || alltrue([for item in v.backend_response.data_masking.query_params : (length(item.value) > 0)])))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.api_management_diagnostics : (
        v.backend_response == null || (v.backend_response.data_masking == null || (v.backend_response.data_masking.headers == null || alltrue([for item in v.backend_response.data_masking.headers : (length(item.value) > 0)])))
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 15 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

