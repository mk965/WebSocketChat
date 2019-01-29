function check(str)
{
	var x = document.getElementById(str);
	var y = document.getElementById(str+"check");
	if(str=="password"){
		x = x.value.length;
		if(x<8)
		{
			y.hidden = false;
		}else{
			y.hidden = true;
		}
	}else if(str=="cpassword")
	{
		var z = document.getElementById("password").value;
		x=x.value;
		if(x !=z){
			y.hidden=false;
		}else{
			y.hidden=true;
		}
	}
	return y.hidden;
}
function validate()
{
	var arr=["password","cpassword"];
	var i = 0;
	submitOK = true;
	while(i<=1)
	{
		if(!check(arr[i]))
		{
submitOK = false; 
break; 
} 
i++; 
} 
if(submitOK) 
{ 
alert("密码修改成功 ！ ！ ！"); 
location.href="denglu.jsp";
return true;
} 
else 
{ 
alert("密码修改失败 ！"); 
return false; 
} 
} 
