.PHONY: deploy
deploy: prep
	puppet apply --modulepath modules/ site.pp

.PHONY: prep
prep:
	bundle install && r10k puppetfile install
