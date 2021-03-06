/*global app*/
//Service for quickly getting the API Resource Object
app.service('R', function($resource, $http, S,$rootScope) {
	return {
		get: function(resourceName) {
			return $resource(S.baseUrl + '/' + resourceName + '/:id', {
				id: '@id'
			});
		},
		getby: function(resourceName,email,name) {
			return $http.get(S.baseUrl + '/' + resourceName + '?'+name+'='+ email+'&is_deleted=0')
				.then(function(results) {
					if (results && results.data && results.data.length > 0)
					{
						return results.data.length;
					}
					else{
						return 0;
					}
						if (cb) cb(results.data[0].count);
				}, function(e) {});
		},
		getdesignation: function(id) {
			return $http.get(S.baseUrl + '/profiles?user_id='+ id)
				.then(function(results) {
					if (results && results.data && results.data.length > 0)
						return results.data;
					//	if (cb) cb(results.data[0].count);
				}, function(e) {});
		},
		count: async function(resourceName, cb) {
		return $http.get(S.baseUrl + '/' + resourceName + '/?count=true')
				.then(function(results) {
					if (results && results.data.length && results.data.length > 0)
						return results.data;
					
					//if (cb) cb(results.data[0].count);
				}, function(e) {});
		},
		query: async function(resourceName, q, cb){
			await $http.get(S.baseUrl + '/' + resourceName,  {params: q})
				.then(function(results) {
					if (results && results.data)
						if (cb) cb(results.data);
						return results.data;
				}, function(e) {
						if (cb) cb(e);
						return e;
            });			
		},
		submit: async function(resourceName, payload, cb){
			await $http.post(S.baseUrl + '/' + resourceName, payload)
				.then(function(results) {
					if (results && results.data)
						if (cb) cb(results.data);
						return results.data;
				}, function(e) {
						if (cb) cb(e);
						return e;
            });			
		},
		update: async function(resourceName, payload, cb){
			await $http.put(S.baseUrl + '/' + resourceName, payload)
				.then(function(results) {
					if (results && results.data)
						if (cb) cb(results.data);
						return results.data;
				}, function(e) {
						if (cb) cb(e);
						return e;
            });			
		},      
		remove: async function(resourceName, id, cb){
			await $http.delete(S.baseUrl + '/' + resourceName + '/' + id)
				.then(function(results) {
					if (results && results.data)
						if (cb) cb(results.data);
						return results.data;
				}, function(e) {
						if (cb) cb(e);
						return e;
            });			
		}
	};
});
