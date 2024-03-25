tal=worm.tal
rom=worm.rom

run: ${rom}
	uxnemu ${rom}

format: ${tal}
	uxnfor ${tal}

lint: ${tal}
	uxnlin ${tal}

${rom}: ${tal} format
	drifblim ${tal} ${rom}

clean:
	rm -f .snarf .theme assets/.snarf

push: clean
	git push origin main

