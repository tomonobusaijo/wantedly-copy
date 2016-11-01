#WANTEDLY-Copy

##User
**association**  
```
has_many :users_projects, images, entries
```
```
has_many :projects, through: :users_projects, dependent: :delete_all
```
```
belongs_to :company
```  
  
**table**  
* name, string  
* sex, integer (male: 0, female: 1)  
* birth_year, integer
* birth_month, integer
* birth_day, integer
* works, string
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
* company_name, string
* company_url, string
* founder, string
* established, datetime
* created_at, datetime  
* updated_at, datetime

##Project
**association**
```
has_many :users_projects
```
```
has_many :users, through: :users_projects
```
```
belongs_to :company
```  

**table**  
* company, references
* project_title, string
* pv_count, integer
* created_at, datetime
* updated_at, datetime

##Users_Projects
**association**  
```
belongs_to :user, project
```  
  
**table**
* user, references
* project, references
* created_at, datetime
* updated_at, datetime

##Image
**association**
```
belongs_to :user, company
```
**table**
* type, integer (user: 0, company: 1)
* status, integer (cover: 0, avatar: 1)
* content, string
* created_at, datetime  
* updated_at, datetime

##Entry
**association**
```
belongs_to :user, company
```
**table**
* user, references
* company, references
* answer, string
* created_at, datetime  
* updated_at, datetime
