identity_token "aws" {
  audience = ["terraform-stacks-private-preview"]
}

identity_token "k8s" {
  audience = ["k8s.workload.identity"]
}


deployment "development" {
  variables = {
    aws_identity_token_file = identity_token.aws.jwt_filename
    regions             = ["ap-southeast-1"]
    role_arn            = "arn:aws:iam::804453558652:role/tfstacks-role"
    vpc_name = "eks-vpc"
    vpc_cidr = "10.0.0.0/16"
    kubernetes_version = "1.28"
    cluster_name = "eks-cluster-two"
    
    #EKS OIDC
    tfc_kubernetes_audience = "k8s.workload.identity"
    tfc_hostname = "https://app.terraform.io"
    tfc_organization_name = "hcpco"
    eks_clusteradmin_arn = "arn:aws:iam::804453558652:role/aws_shaun.stuart_test-developer"
    eks_clusteradmin_username = "aws_shaun.stuart_test-developer"

    #K8S
    k8s_identity_token_file = identity_token.k8s.jwt_filename
    namespace = "hashibank"

  }
}

deployment "development" {
  variables = {
    aws_identity_token_file = identity_token.aws.jwt_filename
    regions             = ["ap-southeast-1"]
    role_arn            = "arn:aws:iam::804453558652:role/tfstacks-role"
    vpc_name = "eks-vpc-three"
    vpc_cidr = "10.0.0.0/16"
    kubernetes_version = "1.28"
    cluster_name = "eks-cluster-three"

    #EKS OIDC
    tfc_kubernetes_audience = "k8s.workload.identity"
    tfc_hostname = "https://app.terraform.io"
    tfc_organization_name = "hcpco"
    eks_clusteradmin_arn = "arn:aws:iam::804453558652:role/aws_shaun.stuart_test-developer"
    eks_clusteradmin_username = "aws_shaun.stuart_test-developer"

    #K8S
    k8s_identity_token_file = identity_token.k8s.jwt_filename
    namespace = "hashibank"

  }
}


