<!-- Please don't remove this: Grab your social icons from https://github.com/carlsednaoui/gitsocial -->

<!-- display the social media buttons in your README -->

By Tim Hopper: 
[tdhopper.com](http://www.tdhopper.com)

[![alt text][1.1]][1]
[![alt text][6.1]][6]


<!-- links to social media icons -->
<!-- no need to change these -->

<!-- icons with padding -->

[1.1]: http://i.imgur.com/tXSoThF.png (twitter icon with padding)
[2.1]: http://i.imgur.com/P3YfQoD.png (facebook icon with padding)
[3.1]: http://i.imgur.com/yCsTjba.png (google plus icon with padding)
[4.1]: http://i.imgur.com/YckIOms.png (tumblr icon with padding)
[5.1]: http://i.imgur.com/1AGmwO3.png (dribbble icon with padding)
[6.1]: http://i.imgur.com/0o48UoR.png (github icon with padding)

<!-- icons without padding -->

[1.2]: http://i.imgur.com/wWzX9uB.png (twitter icon without padding)
[2.2]: http://i.imgur.com/fep1WsG.png (facebook icon without padding)
[3.2]: http://i.imgur.com/VlgBKQ9.png (google plus icon without padding)
[4.2]: http://i.imgur.com/jDRp47c.png (tumblr icon without padding)
[5.2]: http://i.imgur.com/Vvy3Kru.png (dribbble icon without padding)
[6.2]: http://i.imgur.com/9I6NRUm.png (github icon without padding)


<!-- links to your social media accounts -->
<!-- update these accordingly -->

[1]: http://www.twitter.com/tdhopper
[6]: http://www.github.com/tdhopper

<!-- Please don't remove this: Grab your social icons from https://github.com/carlsednaoui/gitsocial -->

# Tau: auto-tweet with [AWS Lambda](https://aws.amazon.com/lambda)

Steps for setting up auto-tweet account (using OS X or Linux):

1. [Create Twitter app](https://apps.twitter.com/) and get consumer and access keys.
2. Fork this repository and clone to local.
2. Run `make credentials_file` to create `twitter_credentials.json`.
3. Add consumer and access keys to `twitter_credentials.json`.
4. Modify `tweet_content` function in `tweet.py` to generate tweet string (140 characters or less).
5. Add PyPI dependencies to `requirements.txt`.
6. Run `make prepare` to generate `lambda_bundle.zip`.
7. In the AWS console, create a Python 2.7 function with `tweet.send_tweet` as the handler. Upload `lambda_bundle.zip` to use as the code. Add a "Scheduled Event" event source.
8. Profit.
