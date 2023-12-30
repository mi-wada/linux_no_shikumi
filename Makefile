init:
		git submodule init
		git submodule update

build:
		docker image build -t linux-no-shikumi .

run:
		docker run -v ./linux-in-practice-2nd:/linux-in-practice-2nd   --rm -it linux-no-shikumi bash
