resource "aws_s3_bucket" "legacy_bucket_00140" {
  bucket = "legacy_bucket_00140-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00140_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00140.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00141" {
  bucket = "legacy_bucket_00141-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00141_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00141.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00142" {
  bucket = "legacy_bucket_00142-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00142_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00142.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00143" {
  bucket = "legacy_bucket_00143-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00143_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00143.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00144" {
  bucket = "legacy_bucket_00144-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00144_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00144.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00145" {
  bucket = "legacy_bucket_00145-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00145_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00145.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00146" {
  bucket = "legacy_bucket_00146-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00146_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00146.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00147" {
  bucket = "legacy_bucket_00147-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00147_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00147.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00148" {
  bucket = "legacy_bucket_00148-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00148_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00148.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00149" {
  bucket = "legacy_bucket_00149-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00149_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00149.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00150" {
  bucket = "legacy_bucket_00150-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00150_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00150.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_00151" {
  bucket = "legacy_bucket_00151-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_00151_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_00151.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_security_group" "open_sg_00000" {
  name = "open_sg_00000"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "open_sg_00001" {
  name = "open_sg_00001"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "open_sg_00002" {
  name = "open_sg_00002"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "open_sg_00003" {
  name = "open_sg_00003"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "open_sg_00004" {
  name = "open_sg_00004"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "open_sg_00005" {
  name = "open_sg_00005"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "open_sg_00006" {
  name = "open_sg_00006"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "open_sg_00007" {
  name = "open_sg_00007"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
