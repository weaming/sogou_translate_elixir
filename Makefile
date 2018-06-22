.PHONY: test publish

test:
	mix escript.build && ./sogou_translate hello

publish:
	MIX_ENV=prod mix escript.build && mix hex.publish package
