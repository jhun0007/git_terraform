variable "user_names" {
    description = "Create IAM users with these names"
    type        = list(string)
    default     =["aws07-neo", "aws07-morpheus", "aws07-trinity"]
}