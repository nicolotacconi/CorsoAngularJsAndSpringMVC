<html>
<head>
<title>Hello World</title>
</head>

<body ng-app="ionicAngular">
	<jsp:include page="../templates/header.jsp" />

	<ion-header-bar class="bar bar-header">


	<h1 class="title">Form</h1>


	</ion-header-bar>


	<ion-content>

	<div class="list">
		<div>
			<label class="item item-input"> <input type="text"
				placeholder="Nome">
			</label>
		</div>

		<div>
			<label class="item item-input"> <input placeholder="Password"
				type="password">
			</label>
		</div>
		<div>
			<label class="item item-input"> <textarea placeholder="Note"></textarea>
			</label>
		</div>
		<div>
			<label class="item item-input"> <input placeholder="Email"
				type="email">
			</label>
		</div>
		<div>
			<label class="item item-input"> <input placeholder="Telefono"
				type="tel">
			</label>
		</div>
		<div>
			<label class="item item-input"> <span class="input-label">Numero</span>
				<input type="number">
			</label>
		</div>
		<div>
			<label class="item item-input"> <span class="input-label">Data</span>
				<input type="date">
			</label>
		</div>
		<div>
			<label class="item item-input"> <span class="input-label">Mese</span>
				<input type="month">
			</label>
		</div>
	</div>

	<div class="list list-inset">
		<label class="item item-input"> <i
			class="icon ion-search placeholder-icon"></i> <input type="text"
			placeholder="Cerca">
		</label>
	</div>

	<div>
		<label class="toggle toggle-assertive"> <input type="checkbox">
			<div class="track">
				<div class="handle"></div>
			</div>
		</label>ON/OFF
	</div>
	<div>
		<label class="checkbox"> <input type="checkbox">
		</label>ON/OFF
	</div>

	<div>

		<div class="list">

			<div>
				<label class="item item-radio"> <input type="radio"
					name="group">
					<div class="item-content">A</div> <i
					class="radio-icon ion-checkmark"></i>
				</label>
			</div>
			<div>
				<label class="item item-radio"> <input type="radio"
					name="group">
					<div class="item-content">B</div> <i
					class="radio-icon ion-checkmark"></i>
				</label>
			</div>

		</div>
	</div>

	<div>

		<label class="item item-input item-select">
			<div class="input-label">Colore</div> <select>
				<option>Blu</option>
				<option selected>Rosso</option>
				<option>Verde</option>
		</select>
		</label>

	</div>

	</ion-content>
</body>
</html>