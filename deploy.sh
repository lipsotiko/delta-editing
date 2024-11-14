BUCKET="deltaeditingbucket1"

aws s3 sync ./ "s3://$BUCKET"  --delete --profile=deltaediting

aws cloudfront create-invalidation --distribution-id 'E3465D82VGNR9A' --paths '/*' --profile=deltaediting

echo "http://$BUCKET.s3-website.us-east-1.amazonaws.com"
