variable "regions" {
  type = set(string)
}

variable "aws_identity_token_file" {
  type = string
}

variable "k8s_identity_token_file" {
  type = string
}

variable "workload_idp_name" {
  type = string
  default = "tfstacks-workload-identity-provider"
}

variable "aws_auth_roles" {
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))
  default = []
}

variable "manage_aws_auth_configmap" {
  type    = bool
  default = false
}

variable "role_arn" {
  type = string
}

variable "vpc_name" {
  type = string 
}

variable "vpc_cidr" {
  type = string
}

variable "kubernetes_version" {
  type = string
  default = "1.28"
}


variable "aws_vpc_cidr" {
  type = string
}

variable "cluster_name" {
  type = string
  default = "eks-cluster"
}

variable "namespace" {
  type = string
}

variable "tfc_hostname" {
  type = string
  default = "https://app.terraform.io"
}

variable "tfc_organization_name" {
  type = string
  default = "hashi-demos-apj"
}

variable "tfc_kubernetes_audience" {
  type = string
  default = "k8s.workload.identity"
}