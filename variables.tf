variable "app_count" {
  type = number
  default = 1
}

variable "whitelist_ips" {
  description = "IP in CIDR to be whitelisted from the alb"
  default     = ["91.154.148.120/32", "212.146.63.50/32"]
  type        = list(string)
}