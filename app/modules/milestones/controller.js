/*global app*/
//The name of the controller should be plural that matches with your API, ending with ControllerExtension. 
//Example: your API is http://localhost:8080/api/tasks then the name of the controller is tasksControllerExtension.
//To register this controller, just go to app/config/routes.js and add 'tasks' in 'easyRoutes' or 'autoRoutes' array.
//
//The main difference in 'easyRoutes' and 'autoRoutes' is that 'autoRoutes' generates complete CRUD pages, where as in 'easyRoutes'
//you need to provide templates inside 'app/modules/tasks' folder. If you want to keep your templates somewhere else, you can pick
//'autoRoutes' and then override the templates using setTemplate function.
//Note that for 'autoRoutes', it is not even required to write Controller Extensions unless you want to modify the behaviour.
app.controller('milestonesControllerExtension', function($scope, $route, $controller, $rootScope, $http, $location, Popup, H, M) {
    
    //This function is called when you need to make changes to the new single object.
    $scope.Visible = false;
    if($rootScope.currentUser.role == 'user')
    {
        $scope.Visible=true;
    }
    $scope.IsVisible = false;
    if($rootScope.currentUser.role == 'admin')
    {
        $scope.IsVisible=true;
    }
    $scope.onInit = async function(obj){
        //$scope.data.single is available here. 'obj' refers to the same. It is the new instance of your 'tasks' resource that matches the structure of your 'tasks' API.
        // obj.is_active = 1;
    };
    
    //This function is called when you are in edit mode. i.e. after a call has returned from one of your API that returns a single object. e.g http://localhost:8080/api/tasks/1
    $scope.onLoad = async function(obj){
        //$scope.data.single is available here. 'obj' refers to the same. It represents the object you are trying to edit.
        
    };
    
    //This function is called when you are in list mode. i.e. before a call has been placed to one of your API that returns a the paginated list of all objects matching your API.
    $scope.beforeLoadAll = async function(query){
        //This is where you can modify your query parameters.    
        //query.is_active = 1;
        //return query;
        if($rootScope.currentUser.role!=='admin')
        {
        console.log(query.user_group_id=$rootScope.currentUser.id);
        }
        query.is_deleted = 0;
    };

    //This function is called when you are in list mode. i.e. after a call has returned from one of your API that returns a the paginated list of all objects matching your API.
    $scope.onLoadAll = async function(obj){
        //$scope.data.list is available here. 'obj' refers to the same. It represents the object you are trying to edit.
        if($rootScope.currentUser.role=='user')
        {
            $scope.setListHeaders(['Id','Title','Initial Date','Due Date','Amount','Project','User Group','Release Date','Delay']);    
        }
        if($rootScope.currentUser.role=='admin')
        {
            $scope.setListHeaders(['Id','Title','Initial Date','Due Date','Amount','Project','User Group','Release Date','Is Active','Delay']);
        }
        //You can call $scope.setListHeaders(['column1','column2',...]) in case the auto generated column names are not what you wish to display.
        //or You can call $scope.changeListHeaders('current column name', 'new column name') to change the display text of the headers;
    };
    
    //This function is called before the create (POST) request goes to API
    $scope.beforeSave = async function(obj, next){
        //You can choose not to call next(), thus rejecting the save request. This can be used for extra validations.
        delete obj.project;
        delete obj.user_group;
        next();
    };

    //This function is called after the create (POST) request is returned from API
    $scope.onSave = async function (obj, next){
        //You can choose not to call next(), thus preventing the page to display the popup that confirms the object has been created.
        next();
    };
    
    //This function is called before the update (PUT) request goes to API
    $scope.beforeUpdate = async function(obj, next){
        //You can choose not to call next(), thus rejecting the update request. This can be used for extra validations.
        next();
    };

    //This function is called after the update (PUT) request is returned from API
    $scope.onUpdate = async function (obj, next){
        //You can choose not to call next(), thus preventing the page to display the popup that confirms the object has been updated.
        next();
    };
    
    //This function will be called whenever there is an error during save/update operations.
    $scope.onError = async function (obj, next){
        //You can choose not to call next(), thus preventing the page to display the popup that confirms there has been an error.
        next();
    };
    
    // If the singular of your title is having different spelling then you can define it as shown below.
    // $scope.getSingularTitle = function(){
    //     return "TASK";
    // }

    // If you want don't want to display certain columns in the list view you can remove them by defining the function below.
    if($rootScope.currentUser.role=='user')
    { 
        $scope.removeListHeaders = function()
        {
             return ['Is Active','Is Deleted'];
        }
    }
    if($rootScope.currentUser.role=='admin')
    { 
        $scope.removeListHeaders = function()
        {
             return ['Is Deleted'];
        }
    }

    // If you want to refresh the data loaded in grid, you can call the following method
    // $scope.refreshData();
    
    // If you are using autoRoutes, and you want to override any templates, you may use the following function
    // $scope.setTemplate('list-item', 'app/your-path/your-template.html');
    // $scope.setTemplate('single', 'app/your-path/your-template.html');
    
    // list-item.html template uses the 'td' element which will be rendered inside a 'table' & 'tr'. 
    // If you don't like the layout, and you want to replace it with your own, you can use the following method.
    // Note that if you override the 'list-items', then you have to use ng-repeat or any other mechanism to iterate over your data that is available in $scope.data.list.
    // $scope.setTemplate('list-items', 'app/your-path/your-template.html');
    var date = new Date().getDate();
    var month = new Date().getMonth()+1;
    var year = new Date().getFullYear();
    $scope.dtmax  = year+"-"+month+"-"+date;
    
    $scope.data1 = function (initial_date, due_date)
		{	
            $scope.errMessage = '';
            if (initial_date > due_date)
            {
                $scope.errMessage = 'Due Date should be greater than Start Date';
                return false;
            }
        };

    $scope.data2 = function (due_date, release_date)
		{	
            $scope.errMessage1 = '';
            if (due_date > release_date)
            {
                $scope.errMessage1 = 'Release Date is not valid...!!!';
                return false;
            }
        };

    
    $scope.a=1
    $scope.remove=function(id){
        var data = {
                is_deleted:$scope.a
        };
        
        $http.put(H.S.baseUrl + '/milestones/' + id,data).then(function(res)
        {
            
                console.log(data);
                $route.reload();
        },
            function(e) {
                alert("... Error:" + e.data.error.message);
            });
    }   

    $scope.currentDate = new Date();
        $scope.checkDate = function(dt)
        {
            console.log( H.toDate(dt));    
            return H.toDate(dt) > $scope.currentDate;
        }
        $scope.checkDay = function(dt)
        {
            // console.log( H.toDate(dt));    
             $scope.diffTime = Math.ceil($scope.currentDate-H.toDate(dt) );
             $scope.diff= Math.ceil($scope.diffTime / (1000 * 60 * 60 * 24)); 
             if($scope.diff > 0)
             {
             return $scope.diff+' days';
             }
            //  console.log($scope.diff);            
        }
    

});
