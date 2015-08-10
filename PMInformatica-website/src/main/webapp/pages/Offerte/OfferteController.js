angular.module('pmInformaticaWebSiteAngular.controllers')

.controller('OfferteController', [ '$scope', function($scope) {

	$scope.offerte = [ {
		"id" : 1,
		"titolo" : "Notebook Asus",
		"immagine" : "../../resources/images/shop.png",
		"descrizione" :"",
		"prezzo" : "€ 300,00"
	}, {
		"id" : 1,
		"titolo" : "PC Assemblato",
		"immagine" : "../../resources/images/shop.png",
		"descrizione" :"",
		"prezzo" : "€ 200,00"
	}, {
		"id" : 1,
		"titolo" : "Impianto Wireless",
		"immagine" : "../../resources/images/shop.png",
		"descrizione" :"",
		"prezzo" : "€ 1.500,00"
	} ];
} ]);