variable "name" {
  type    = string
  default = "qhub-testing-aws2"
}

variable "environment" {
  type    = string
  default = "dev"
}


variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "availability_zones" {
  description = "AWS availability zones within AWS region"
  type        = list(string)
  default     = ["eu-central-1a", "eu-central-1b"]
}

variable "vpc_cidr_block" {
  description = "VPC cidr block for infastructure"
  type        = string
  default     = "10.10.0.0/16"
}
# jupyterhub
variable "endpoint" {
  description = "Jupyterhub endpoint"
  type        = string
  default     = "jupyter.qhub.amstelhack2020.site"
}

variable "jupyterhub-image" {
  description = "Jupyterhub user image"
  type = object({
    name = string
    tag  = string
  })
  default = {
    name = "quansight/qhub-jupyterhub"
    tag  = "1abd4efb8428a9d851b18e89b6f6e5ef94854334"
  }
}

variable "jupyterlab-image" {
  description = "Jupyterlab user image"
  type = object({
    name = string
    tag  = string
  })
  default = {
    name = "quansight/qhub-jupyterlab"
    tag  = "1abd4efb8428a9d851b18e89b6f6e5ef94854334"
  }
}

variable "dask-worker-image" {
  description = "Dask worker image"
  type = object({
    name = string
    tag  = string
  })
  default = {
    name = "quansight/qhub-dask-worker"
    tag  = "1abd4efb8428a9d851b18e89b6f6e5ef94854334"
  }
}
