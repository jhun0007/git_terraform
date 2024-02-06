provider "aws" {
    region = "ap-northeast-2"
}
#aws계정을 만들고 싶음
resource "aws_iam_user" "example" {
    count   = length(var.user_names)
    name    = var.user_names[count.index]
}

output "neo_arn" {
    value = aws_iam_user.example[*].arn
}