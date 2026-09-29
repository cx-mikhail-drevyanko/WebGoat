resource "aws_s3_bucket" "legacy_bucket_01200" {
  bucket = "legacy_bucket_01200-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_01200_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_01200.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_01201" {
  bucket = "legacy_bucket_01201-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_01201_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_01201.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_01202" {
  bucket = "legacy_bucket_01202-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_01202_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_01202.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_01203" {
  bucket = "legacy_bucket_01203-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_01203_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_01203.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_01204" {
  bucket = "legacy_bucket_01204-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_01204_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_01204.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_01205" {
  bucket = "legacy_bucket_01205-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_01205_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_01205.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_01206" {
  bucket = "legacy_bucket_01206-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_01206_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_01206.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_01207" {
  bucket = "legacy_bucket_01207-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_01207_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_01207.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_01208" {
  bucket = "legacy_bucket_01208-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_01208_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_01208.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_01209" {
  bucket = "legacy_bucket_01209-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_01209_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_01209.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_01210" {
  bucket = "legacy_bucket_01210-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_01210_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_01210.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_01211" {
  bucket = "legacy_bucket_01211-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_01211_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_01211.id
  versioning_configuration {
    status = "Disabled"
  }
}

resource "aws_s3_bucket" "legacy_bucket_01212" {
  bucket = "legacy_bucket_01212-data"
  acl    = "public-read"
}

resource "aws_s3_bucket_versioning" "legacy_bucket_01212_versioning" {
  bucket = aws_s3_bucket.legacy_bucket_01212.id
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
