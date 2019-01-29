function check(str)
{
	var x = document.getElementById(str);
	var y = document.getElementById(str+"check");
	if(str=="email"){
		x = x.value.length;
		if(x<=0){
			y.hidden=false;
		}else{
			y.hidden=true;
		}
	}
	else if(str=="text"){
		x=x.value;
		if(x==""){
			y.hidden=false;
		}else{
			y.hidden=true;
		}
	}
	else if(str=="password"){
		x = x.value.length;
		if(x<8)
		{
			y.hidden = false;
		}else{
			y.hidden = true;
		}
	}
	else if(str=="cpassword")
	{
		var z = document.getElementById("password").value;
		x=x.value;
		if(x!=z){
			y.hidden=false;
		}else{
			y.hidden=true;
		}
	}
	return y.hidden;
}
function validate()
{
	var arr=["email","text","password","cpassword"];
	var i = 0;
	submitOK = true;
	while(i<=3)
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
alert("恭喜您账号注册成功 ！ ！ ！"); 
return true; 
} 
else 
{ 
alert("账号注册失败 ！"); 
return false; 
} 
} 
