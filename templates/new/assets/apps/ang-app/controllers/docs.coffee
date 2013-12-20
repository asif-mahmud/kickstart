define ['./module'], (controllers) ->
	controllers.controller 'DocsCtrl', ['$scope', '$firebase', '$location', ($scope, $firebase, $location) ->
		$scope.sections = [
			name: 'First Steps'
			path: 'first-steps'
		,
			name: 'Creating Pages'
			path: 'pages'
		,
			name: 'Creating Partials'
			path: 'partials'
		,
			name: 'Creating Apps'
			path: 'apps'
		,
			name: 'Creating Angular Templates'
			path: 'templates'
		,
			name: 'Compiling in Roots'
			path: 'roots'
		,
			name: 'Intro to CoffeeScript'
			path: 'coffeescript'
		,
			name: 'Intro to Stylus'
			path: 'stylus'
		,
			name: 'Intro to Jade'
			path: 'jade'
		,
			name: 'Acknowledgments'
			path: 'acknowledgments'
		,
			name: 'Optimizations'
			path: 'optimizations'
		]
		$scope.selectedSection = $scope.sections[0]
		$scope.setSelectedSection = (section) ->
			$scope.selectedSection = section
			$location.path(section.path)
		$scope.$on '$locationChangeSuccess', () ->
			path = $location.path()
			path = path.substr 1, path.length
			sectionIndex = null
			$.grep($scope.sections, (e, i) -> sectionIndex = i if e.path == path )
			$scope.setSelectedSection $scope.sections[sectionIndex]
	]