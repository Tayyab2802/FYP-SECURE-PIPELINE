# =========================
# S3 Bucket for Frontend
# =========================
resource "aws_s3_bucket" "frontend_bucket" {
  bucket = "${var.project_name}-frontend-bucket"

  tags = {
    Name = "${var.project_name}-frontend-bucket"
  }
}

# =========================
# S3 Bucket Ownership Controls
# =========================
resource "aws_s3_bucket_ownership_controls" "frontend_bucket_ownership" {
  bucket = aws_s3_bucket.frontend_bucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

# =========================
# INTENTIONALLY VULNERABLE:
# Disable public access protections
# =========================
resource "aws_s3_bucket_public_access_block" "frontend_bucket_pab" {
  bucket = aws_s3_bucket.frontend_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

# =========================
# S3 Server-Side Encryption
# =========================
resource "aws_s3_bucket_server_side_encryption_configuration" "frontend_bucket_encryption" {
  bucket = aws_s3_bucket.frontend_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# =========================
# Upload index.html to S3
# =========================
resource "aws_s3_object" "frontend_index" {
  bucket       = aws_s3_bucket.frontend_bucket.id
  key          = "index.html"
  source       = "../src/frontend/index.html"
  content_type = "text/html"

  etag = filemd5("../src/frontend/index.html")
}

# =========================
# INTENTIONALLY VULNERABLE:
# Public read bucket policy
# =========================
resource "aws_s3_bucket_policy" "frontend_bucket_policy" {
  bucket = aws_s3_bucket.frontend_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid    = "PublicReadGetObject"
        Effect = "Allow"
        Principal = "*"
        Action   = "s3:GetObject"
        Resource = "${aws_s3_bucket.frontend_bucket.arn}/*"
      }
    ]
  })
}