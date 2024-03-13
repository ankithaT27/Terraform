provider "aws"{
region="us-east-1"
}


resources "aws_s3_instance" "terraform_origin_bucket{
   bucket="m_y_b_u_cket"
}
