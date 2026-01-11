variable "stream_analytics_function_javascript_udas" {
  description = <<EOT
Map of stream_analytics_function_javascript_udas, attributes below
Required:
    - name
    - script
    - stream_analytics_job_id
    - input (block):
        - configuration_parameter (optional)
        - type (required)
    - output (block):
        - type (required)
EOT

  type = map(object({
    name                    = string
    script                  = string
    stream_analytics_job_id = string
    input = object({
      configuration_parameter = optional(bool, false)
      type                    = string
    })
    output = object({
      type = string
    })
  }))
}

