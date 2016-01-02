# Tau: auto-tweet with [AWS Lambda](https://aws.amazon.com/lambda)

Steps for setting up auto-tweet account (using OS X or Linux):

1. [Create Twitter app](https://apps.twitter.com/) and get consumer and access keys.
2. Fork this repository and clone to local.
2. Run `make credentials_file` to create `twitter_credentials.json`.
3. Add consumer and access keys to `twitter_credentials.json`.
4. Modify `tweet_content` function in `tweet.py` to generate tweet string (140 characters or less).
5. Add Pypi dependencies to `requirements.txt`.
6. Run `make prepare` to generate `lambda_bundle.zip`.
7. In the AWS console, create a Python 2.7 function with `tweet.send_tweet` as the handler. Upload `lambda_bundle.zip` to use as the code. Add a "Scheduled Event" event source.
8. Profit.