#!/usr/bin/env python
# ------------------------------------------------------------------------------------------------------------
# (c) 2017 Expedia, Inc. all rights reserved
# ------------------------------------------------------------------------------------------------------------
# To use: make sure python is installed:
# > which python
# make sure bcrypt is installed:
# sudo pip install bcrypt


import bcrypt
import sys
import getpass

phrase = getpass.getpass("Enter passphrase: ")
hashed = bcrypt.hashpw(phrase, bcrypt.gensalt(4, b"2a"))
print "phrase"
print "hash:"
print hashed
print "verified: " + str(bcrypt.checkpw(phrase, hashed))
