<div class="container">
    <h2 ng-bind="tableName"></h2>
    <a href="#/cms/archObjectType/new" class="btn btn-success">Создать новый тип</a>
    <table class="table">
       <thead>
           <tr>
               <th>Наименование</th>
               <th>Тип объекта</th>
               <th>Список объектов</th>
               <th>Действия</th>
           </tr>
       </thead>
       <tbody>
           <tr data-ng-repeat="archObjType in listArchObjTypes">
               <td ng-bind="archObjType.name"></td>
               <td ng-bind="archObjType.parent"></td>
               <td>
                   <div class="dropdown">
                       <button class="btn btn-info dropdown-toggle" type="button" data-toggle="dropdown" title="Нажать для просмотра списка">Список объектов: {{archObjType.archObjects.length}} <span class="caret"></span>
                       </button>
                       <ul class="dropdown-menu"  >
                           <li ng-repeat="archObject in archObjType.archObjects">
                               <a href="#/cms/archObject/{{archObject.id}}" ng-bind="archObject.name"></a>
                           </li>
                       </ul>
                   </div>
               </td>
               <td>
                   <a href="#/cms/archObjectType/{{archObjType.id}}" class="btn btn-default" data-toggle="tooltip" title="Редактировать тип объекта"><span class="glyphicon glyphicon-pencil"></span></a>
                   <a href="#/cms/archObjectType/{{archObjType.id}}" class="btn btn-default" data-toggle="tooltip" title="Удалить тип объекта"><span class="glyphicon glyphicon-remove"></span></a>
               </td>
           </tr>
       </tbody>
    </table>
</div>