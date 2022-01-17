
curl --location \
		--request GET 'https://api.github.com/search/repositories?q=user:noReasonException&per_page=100' \
		--header "Authorization: token $1" \
		| jq '.items[].ssh_url' |sed 's/"//' | sed 's/"//'  | while read in; do git clone "$in"; done 


