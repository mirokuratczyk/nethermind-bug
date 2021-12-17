# nethermind-bug

To reproduce
```
./setup.sh
./run.sh | grep "Sealed"
# Should see:
# "... Sealed block 1 ..."
# "... Sealed block 2 ..."
# "... Sealed block 3 ..."
# ...

# then kill run.sh with ^C and run again

./run.sh
# Should see:
# "... Sealed block 1 ..."
# "... Sealed block 1 ..."
# "... Sealed block 1 ..."
# ...
```
