<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html lang="en" ng-app>
<head>
<jsp:include page="../layout/head.jsp" />
<script type="text/javascript">
	function FormsController($scope, $http) {
		$scope.questions = [ {
			domanda : "blah blah blah?",
			answers : [ "12", "13", "15", "17" ]
		}, {
			domanda : "blah blah blah2?",
			answers : [ "si", "no", "forse" ]
		}, {
			domanda : "blah blah blah3?",
			answers : [ "12", "13", "15", "17" ]
		}, {
			domanda : "blah blah blah4?",
			answers : [ "si", "no", "forse" ]
		} ];

		$scope.firstUnaswered = function(question) {
			for ( var i = 0; i < $scope.questions.length; i++) {
				if (!$scope.questions[i].answered) {
					if ($scope.questions[i].domanda == question.domanda) {
						return true;
					} else {
						return false;
					}
				}
			}
		};

		$scope.doanswer = function(question, answer) {
			for ( var i = 0; i < $scope.questions.length; i++) {
				if ($scope.questions[i].domanda == question.domanda) {
					$scope.questions[i].answered = true;
					$scope.questions[i].closed = true;
					$scope.questions[i].answer = answer;
				}
			}
		}

		$scope.showAnswers = function(question, answer) {
			if ($scope.firstUnaswered(question) || question.closed == false
					|| question.answer == answer)
				return true;
			else
				return false;
		}

		$scope.toggleQuestion = function(question) {
			question.closed = !question.closed;
		}
	}
</script>
<style type="text/css">
.bordered {
	border: 1px solid black;
}
</style>
</head>

<body>
	<jsp:include page="../layout/navbar.jsp" />
	<div class="container" ng-controller="FormsController">
		<h1>Forms</h1>
		<div ng-repeat="question in questions"
			ng-class="{bordered: firstUnaswered(question)}"
			style="margin-bottom: 10px">
			<i class="icon-plus" ng-show="question.closed == true"
				ng-click="toggleQuestion(question)"></i><i class="icon-minus"
				ng-show="question.closed == false"
				ng-click="toggleQuestion(question)"></i> {{question.domanda}}
			<div>
				<label ng-repeat="answer in question.answers" class="radio"
					ng-show="showAnswers(question, answer)"><input type="radio"
					name="{{$parent.$index}}" id="optionsRadios1" value="x"
					ng-click="doanswer(question, answer)" />{{answer}}</label>
			</div>
		</div>
	</div>
	<jsp:include page="../layout/bodyFooter.jsp" />
</body>

</html>