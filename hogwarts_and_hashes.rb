###########################
# FORMING OUR COLLECTIONS #
###########################

# Our main collection (an array) which will hold students(hash)
#  Think of Arrays as a warehouse. Indexes only (rooms)
hogwarts = []

# Our second tier collection.
# This hash will go into the school of hogwarts (array)
#  Hashes let us label our data a bit
students = {}

# Lets organize further -> in the hash 'students' we enter an array of the house gryffindor that can be accessed with the key 'gryffindor' which are immutable symbols.
students[:gryffindor] = []
# Ehh why not slytherin?
students[:slytherin] = []

# Now lets put the students HASH into the hogwarts ARRAY
hogwarts.push(students) # An array is an object. Can still call methods!

# Need proof?
cd hogwarts
ls

# Could also do: hogwarts = [students]

###########################
#   Defining Data Items   #
###########################

#  Hashes allow us to be personal with our data <3
student1 = {:name => 'Harry Potter', :age => 11, :wizard => true}
# Pay attention to comma's
student2 = {:name => 'Hermoine Granger', :age => 11, :wizard => true}
# Using symbols as our Hash keys
student3 = {:name => "Draco Malfoy", :age => 11, :wizard => true}

# We can inspect each key (symbol) like so:
student1.keys # (lovely methods)
# And what are their values?
student1.values

###########################
#  Submitting Data Items  #
###########################

# Let's get them into Gryffindor!!
hogwarts[0][:gryffindor].push(student1)
hogwarts[0][:gryffindor].push(student2)

###########################
#   Accessing the Items   #
###########################

# Check it out!
hogwarts[0][:gryffindor]
# hogwarts school (array)
#  first index of hogwarts contains the houses- gryffindor + slytherin
 # lets use the symbol :gryffindor to check out them students
  # [{:name=>"Harry Potter", :age=>11, :wizard=>true},
  #  {:name=>"Hermoine Granger", :age=>11, :wizard=>true}]
hogwarts[0][:gryffindor][0].keys
hogwarts[0][:gryffindor][0].values

###########################
#  Manipulate the Items   #
###########################

# Can still manipulate data values => Make harry age + 1
hogwarts[0][:gryffindor][0][:age] += 1

# Oh right... Slytherin
hogwarts[0][:slytherin].push(student3)


# NOW TRAVERSE THE LANDS OF HASHRAYS
