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
        headers = optional(object({
          mode  = string
          value = string
        }))
        query_params = optional(object({
          mode  = string
          value = string
        }))
      }))
      headers_to_log = optional(set(string))
    }))
    backend_response = optional(object({
      body_bytes = optional(number)
      data_masking = optional(object({
        headers = optional(object({
          mode  = string
          value = string
        }))
        query_params = optional(object({
          mode  = string
          value = string
        }))
      }))
      headers_to_log = optional(set(string))
    }))
    frontend_request = optional(object({
      body_bytes = optional(number)
      data_masking = optional(object({
        headers = optional(object({
          mode  = string
          value = string
        }))
        query_params = optional(object({
          mode  = string
          value = string
        }))
      }))
      headers_to_log = optional(set(string))
    }))
    frontend_response = optional(object({
      body_bytes = optional(number)
      data_masking = optional(object({
        headers = optional(object({
          mode  = string
          value = string
        }))
        query_params = optional(object({
          mode  = string
          value = string
        }))
      }))
      headers_to_log = optional(set(string))
    }))
  }))
}

