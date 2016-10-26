## some explanations
# http://www.randomhacks.net/2007/01/20/13-ways-of-looking-at-a-ruby-symbol/

# store a single copy of string

"open".object_id != "open".object_id

:open.object_id == :open.object_id

# symbols are not garbage collected