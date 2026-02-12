mkdir -p $HOME/.zsh/completions &&
	asdf completion zsh >$HOME/.zsh/completions/_asdf &&
	bootdev completion zsh >$HOME/.zsh/completions/_bootdev &&
	colima completion zsh >$HOME/.zsh/completions/_colima &&
	docker completion zsh >$HOME/.zsh/completions/_docker &&
	helm completion zsh >$HOME/.zsh/completions/_helm &&
	k9s completion zsh >$HOME/.zsh/completions/_k9s &&
	kubectl completion zsh >$HOME/.zsh/completions/_kubectl &&
	pnpm completion zsh >$HOME/.zsh/completions/_pnpm
