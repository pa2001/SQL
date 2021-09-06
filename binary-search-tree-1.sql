SELECT N,
IF
 (
  P IS NULL , "Root",
  IF
    (
       B.N IN (SELECT P FROM BST) , "Inner" , "Leaf" 
    )
 )
FROM BST AS B
ORDER BY N;
