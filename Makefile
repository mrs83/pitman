.PHONY: test install release clean

test:
	@poetry run pytest

install:
	@poetry install


release: test
	@poetry build

clean:
	@find ./ -name '*.pyc' -exec rm -f {} \;
