# Create a list of 5 strings. Check whether an item exists in the list. 
# Illustrate addition and removal of an item in the list.

fruits <- list("Apple","Orange","Mango")
"Apple" %in% fruits

append(fruits,"Grapes")

fruits[fruits != "Mango"]
fruits
fruits[3] <- NULL
fruits

# Create a list containing strings, numbers, vectors and a logical value.
mixed_ls <- list("Pear",1,2,3,4,fruits,TRUE)
mixed_ls

# Create 3 lists and merge them together. Display the length of the merged list.
l1 <- list(1,2,3)
l2 <- list(4,5,6)
l3 <- list(7,8,9)

l4 <- c(l1,l2,l3)

l4
length(l4)

# Create two lists having numbers. Convert the lists to vectors, add the vectors and display the result.
l1 <- unlist(l1)
l2 <- unlist(l2)

l1 + l2
cat(l1,l2)

# Create an even no list and an odd no list and merge it together as a even odd list
even_list <- list(1,2,3,4)
odd_list <- list(5,6,7)

c(even_list,odd_list)
length(c(even_list,odd_list))
