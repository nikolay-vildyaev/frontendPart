<div class="container">
    <h2 ng-bind="tableName"></h2>
    <!-- pass in the variable if our form is valid or invalid -->
    <form name="archTypeObjForm" ng-submit="saveArchObjType()" novalidate>

        <!-- NAME -->
        <div ng-class="{ 'has-error' : archTypeObjForm.name.$invalid && !archTypeObjForm.name.$pristine }">
            <label>Наименование</label>
            <input type="text" name="name" class="form-control" ng-model="archTypeObj.name" required ng-minlength="3" ng-maxlength="80">
            <p ng-show="archTypeObjForm.name.$error.minlength" class="help-block">Имя слишком короткое</p>
            <p ng-show="archTypeObjForm.name.$error.maxlength" class="help-block">Имя слишком длинное</p>
            <br/>
        </div>

        <!-- Parent Type-->
        <div ng-class="{ 'has-error' : archTypeObjForm.parent.$invalid && archTypeObjForm.parent.$touched }">
            <label>Тип объекта</label>
            <select class="form-control" name="parent" ng-model="archTypeObj.parent" ng-options="parent.name for parent in listArchObjTypes" required>
                <option value="">Выбрать тип</option>
            </select>
            <br/>
        </div>

        <!-- archObject -->
        <div ng-class="{'has-error' : archTypeObjForm.archObj.$invalid && archTypeObjForm.archObj.$touched }">
            <label>Список объектов</label>
            <select class="form-control" name="archObj" ng-model="archTypeObj.archObjects" ng-options="archObj.name for archObj in archObjectList" required>
                <option value="">Выбрать объект</option>
            </select>
            <br/>
        </div>

        <!-- SUBMIT BUTTON -->
        <button type="submit" class="btn btn-primary" ng-disabled="archTypeObjForm.$invalid">Сохранить</button>

    </form>
</div>