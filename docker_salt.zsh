LOCAL_VOLUME="${HOME}/devel/salt/"

csalt_func() {
    sudo /usr/bin/docker run --rm -itv $LOCAL_VOLUME:/testing $1-salt /bin/bash
    }

ctest_func() {
    sudo /usr/bin/docker run --rm -itv $LOCAL_VOLUME:/testing $1-salt python2 /testing/tests/runtests.py -n $2
}

alias cshell='csalt_func'
alias cts='ctest_func'
