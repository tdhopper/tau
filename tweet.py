import twitter as tw
import json

def tweet_content():
    """Generate tweet string (140 characters or less)
    """
    pass

def send_tweet(event, context):
    """Post tweet
    """
    with open("twitter_credentials.json", "r") as f:
        credentials = json.load(f)
    t = tw.Api(**credentials)
    try:
        status = tweet_content()
        t.PostUpdate(status=status)
        return "Tweeted {}".format(status)
    except Exception as e:
        return e.message

if __name__ == '__main__':
    print send_tweet(None, None)
