#WANTEDLY-Copy

##User
**association**  
```
has_many 
```  
  
**table**  
* **name**, string  
* member, string  
* profile, text  
* works, text  
* created_at, datetime  
* updated_at, datetime

##Projects
**association**  
```
has_many
```  
```
belongs_to
```  

**table**  
* user_id, integer  
* title, string  
* catchcopy, string  
* concept, text  
* created_at, datetime  
* updated_at, datetime

##CapturedImage
**association**  
```
belongs_to :prototype
```  

**table**  
* prototype_id, integer  
* created_at, datetime  
* updated_at, datetime
* **role, integer ( main: 0, sub: 1 )**

##Like
**association**  
```
belongs_to :user, prototype
```  

**table**  
* user_id, integer
* prototype_id, integer
* created_at, datetime  
* updated_at, datetime

##Comment
**association**  
```
belongs_to :user, prototype
```  

**table**  
* content, text  
* user_id, integer
* prototype_id, integer
* created_at, datetime  
* updated_at, datetime
