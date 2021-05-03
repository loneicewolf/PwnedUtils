printf "It goes without saying:\nDo not type in your real password here\n\n"
read pass
curl https://api.pwnedpasswords.com/range/$(echo $pass | sha1sum | cut --bytes=1-5)
# or, printf: (not same as newline is included)
# curl https://api.pwnedpasswords.com/range/$(printf $pass | sha1sum | cut --bytes=1-5)
# one could add a "| col" or "| column" to make it a bit nicer
