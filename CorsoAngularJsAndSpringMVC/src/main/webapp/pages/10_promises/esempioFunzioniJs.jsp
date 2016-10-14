<!DOCTYPE html>
<html>
<body>

	<h1>JavaScript Functions</h1>

	<p>esempio che esgue dei calcoli: </p>
	<p>var1: <input type="text" id="input1"   > </p>
	<p>var2: <input type="text" id="input2"   > </p>
	<p><button onclick="elabora()">procedo?</button>oppure<button onclick="elaboraInverso()">procedo inverso?</button></p>

<br>
	result1:
	<p id="result1"></p>
	result2:
	<p id="result2"></p>
<br>
<button onclick="myReset()">reset</button>
	<script>
		var price1 = 0;
		var price2 = 0;
		
		function myFunction(p1, p2) {
			var res1 = p1 * p2;
			for (var i = 0; i < 1000000000; i++) {}//elaboro...
			console.log('termino myFunction')
			return res1;
		}
		function myFunction2(p1, p2) {
			var res2 = 0;
			for (var i = 0; i < 1000000000; i++) {} //elaboro...
			res2 = p1 * p2;
			console.log('termino myFunction2')
			return res2;
		}
		
		function recupera(){
			price1 = document.getElementById("input1").value;
			price2 = document.getElementById("input2").value;
		}
		function elabora(){
			recupera()
			document.getElementById("result1").innerHTML = myFunction(price1,price2);
			document.getElementById("result2").innerHTML = myFunction2(price1,price2);
		}
		function elaboraInverso(){
			recupera()
			document.getElementById("result2").innerHTML = myFunction2(price1,price2);
			document.getElementById("result1").innerHTML = myFunction(price1,price2);
		}
		function myReset(){
			price1 = 0;
			price2 = 0;
			document.getElementById("input1").value = '';
			document.getElementById("input2").value = '';
			document.getElementById("result1").innerHTML = "";
			document.getElementById("result2").innerHTML = "";
		}
	</script>

</body>
</html>
