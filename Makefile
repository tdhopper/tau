define JSON_BODY
{
  "consumer_key": "CONSUMER KEY",
  "consumer_secret": "CONSUMER SECRET",
  "access_token_key": "ACCESS TOKEN KEY",
  "access_token_secret": "ACCESS TOKEN SECRET"
}
endef


dependencies:
	STATIC_DEPS=true pip install -Ur requirements.txt -t .

prepare: dependencies
	rm -f lambda_bundle.zip
	zip lambda_bundle *
	git clean --force -d --exclude *.zip

clean:
	git clean -fd

export JSON_BODY
credentials_file:
	@echo "$$JSON_BODY" > twitter_credentials.json