for(i in 1:100)
{
  if(i%%3==0 &&i%%5==0)
  {
    print("fuzz buzzz")
  }else if(i%%5==0){
    print("buzz")
  }else if(i%%3 == 0)
  {
    print("fuzz")
  }else {
    print(i)
  }
}