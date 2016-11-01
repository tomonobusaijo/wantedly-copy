#WANTEDLY-Copy

##User
**association**  
```
has_many :images, entries
```
```
belongs_to :company, staffing
```  
  
**table**  
* name, string  
* sex, integer (male: 0, female: 1)  
* birth_year, integer
* birth_month, integer
* birth_day, integer
* works, string
* image, string (cover: 0, avatar: 1)
* address, string
* catchcopy, string
* introduction, text
* created_at, datetime  
* updated_at, datetime

##Company
**association**  
```
has_many :users, projects, images, entries
```

**table**  
* campany_name, string
* url, string
* founder, string
* established, datetime
* image, string (cover: 0, avatar: 1)
* created_at, datetime  
* updated_at, datetime

##Project
**association**  
```
has_many :staffings
```  
```
belongs_to :company
```  

**table**  
* company_id, integer  
* title, string
* pv_count, integer
* created_at, datetime
* updated_at, datetime

##Staffing
**association**  
```
has_one :user
```
```
belongs_to :project
```  
  
**table**
* user_id, integer


##Image
**association**
```
belongs_to :user, company
```
**table**
* type, integer (user: 0, company: 1)
* status, integer (cover: 0, avatar: 1)
* created_at, datetime  
* updated_at, datetime

##Entry
**association**
```
belongs_to :user, company
```
**table**
* user_id, integer
* company_id, integer
* answer, string
* created_at, datetime  
* updated_at, datetime
