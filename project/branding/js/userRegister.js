function changeUserRoleCheckbox($checkBox){
    if($checkBox && $checkBox.type === 'checkbox'){
        var userRoleCheckboxArray = $('.user-role-input-checkbox'),
            userRoleCheckboxArrayLength = userRoleCheckboxArray.length;
                
        if(parseInt($checkBox.value) === 1){
            for (var i = 0; i < userRoleCheckboxArrayLength; i++) {
                userRoleCheckboxArray[i].checked = $checkBox.checked;
            }
        } else{
            if($checkBox.checked === true){
                var status = true;
                for (var i = 1; i < userRoleCheckboxArrayLength; i++) {
                    if(!userRoleCheckboxArray[i].checked){
                        status = false;
                    }
                }
                userRoleCheckboxArray[0].checked = status;
            } else{
                userRoleCheckboxArray[0].checked = false;                            
            }
        }        
    }
}