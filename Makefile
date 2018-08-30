deploy: prep
	puppet apply --modulepath modules/ site.pp

prep:
	r10k puppetfile install
