variable "environment" {
  description = "Architecture Environment"
  type        = "string"
}

variable "client_name" {
  description = "Client Name"
  type        = "string"
}

variable "subscription_id" {
  description = "Subscription ID used to tag monitors"
  type        = "string"
}

variable "delay" {
  description = "Delay in seconds for the metric evaluation"
  default = 600
}

variable "message" {
  description = "Message sent when an alert is triggered"
}

## IOT hubs
variable "jobs_failed_threshold_warning" {
  description = "Jobs Failed rate limit (warning threshold)"
  default = 0
}

variable "jobs_failed_threshold_critical" {
  description = "Jobs Failed rate limit (critical threshold)"
  default = 10
}

variable "listjobs_failed_threshold_warning" {
  description = "ListJobs Failed rate limit (warning threshold)"
  default = 0
}

variable "listjobs_failed_threshold_critical" {
  description = "ListJobs Failed rate limit (critical threshold)"
  default = 10
}

variable "queryjobs_failed_threshold_warning" {
  description = "QueryJobs Failed rate limit (warning threshold)"
  default = 0
}

variable "queryjobs_failed_threshold_critical" {
  description = "QueryJobs Failed rate limit (critical threshold)"
  default = 10
}

variable "c2d_methods_failed_threshold_warning" {
  description = "C2D Methods Failed rate limit (warning threshold)"
  default = 0
}

variable "c2d_methods_failed_threshold_critical" {
  description = "C2D Methods Failed rate limit (critical threshold)"
  default = 10
}

variable "c2d_twin_read_failed_threshold_warning" {
  description = "C2D Twin Read Failed rate limit (warning threshold)"
  default = 0
}

variable "c2d_twin_read_failed_threshold_critical" {
  description = "C2D Twin Read Failed rate limit (critical threshold)"
  default = 10
}

variable "c2d_twin_update_failed_threshold_warning" {
  description = "C2D Twin Update Failed rate limit (warning threshold)"
  default = 0
}

variable "c2d_twin_update_failed_threshold_critical" {
  description = "C2D Twin Update Failed rate limit (critical threshold)"
  default = 10
}

variable "d2c_twin_read_failed_threshold_warning" {
  description = "D2C Twin Read Failed rate limit (warning threshold)"
  default = 0
}

variable "d2c_twin_read_failed_threshold_critical" {
  description = "D2C Twin Read Failed rate limit (critical threshold)"
  default = 10
}

variable "d2c_twin_update_failed_threshold_warning" {
  description = "D2C Twin Update Failed rate limit (warning threshold)"
  default = 0
}

variable "d2c_twin_update_failed_threshold_critical" {
  description = "D2C Twin Update Failed rate limit (critical threshold)"
  default = 10
}

variable "d2c_telemetry_egress_dropped_threshold_warning" {
  description = "D2C Telemetry Dropped Failed limit (warning threshold)"
  default = 500
}

variable "d2c_telemetry_egress_dropped_threshold_critical" {
  description = "D2C Telemetry Dropped Failed limit (critical threshold)"
  default = 1000
}

variable "d2c_telemetry_egress_orphaned_threshold_warning" {
  description = "D2C Telemetry Orphaned Failed limit (warning threshold)"
  default = 500
}

variable "d2c_telemetry_egress_orphaned_threshold_critical" {
  description = "D2C Telemetry Orphaned Failed limit (critical threshold)"
  default = 1000
}

variable "d2c_telemetry_egress_invalid_threshold_warning" {
  description = "D2C Telemetry Invalid Failed limit (warning threshold)"
  default = 500
}

variable "d2c_telemetry_egress_invalid_threshold_critical" {
  description = "D2C Telemetry Invalid Failed limit (critical threshold)"
  default = 1000
}

variable "d2c_telemetry_egress_fallback_threshold_warning" {
  description = "D2C Telemetry Fallback Failed limit (warning threshold)"
  default = 500
}

variable "d2c_telemetry_egress_fallback_threshold_critical" {
  description = "D2C Telemetry Fallback Failed limit (critical threshold)"
  default = 1000
}
