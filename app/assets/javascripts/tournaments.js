<script>
function myFunction(index1,index2)
{
  var x;
  var y;
  var r=prompt("Team 1");
  var r1=prompt("Team 2");
  if (r!=null && r1!=null)
  {
    if(parseInt(r) > parseInt(r1)){
      x=r+":"+r1;
      y="Team 1";
    }
    else {
      x=r1+":"+r;
      y="Team 2";
    }
  }
  else
  {
    x="Error";
    y="Error";
  }
  document.getElementById("databaza"+index1).innerHTML=x;
  document.getElementById("winner"+index2).innerHTML=y;
}
</script>