#!/bin/sh

notmuch new

# retag all "new" messages "inbox" and "unread"
notmuch tag +inbox +unread -new -- tag:new
# tag all messages from "me" as sent and remove tags inbox and unread
notmuch tag -new -inbox +sent -- from:just1602@riseup.net or from:just1602@resist.ca
