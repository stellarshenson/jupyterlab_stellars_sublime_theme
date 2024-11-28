all: clean
	python -m build 

install: all
	pip install dist/*.whl --force-reinstall

clean: uninstall
	npm run clean || true
	npm run clean:labextension || true
	rm -rf dist lib || true

uninstall:
	pip uninstall -y dist/*.whl 2>/dev/null || true

publish: install
	twine upload dist/*

dependencies:
	conda install -y nodejs yarn
	pip install twine
