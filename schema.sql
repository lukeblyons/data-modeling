USERS
- id: int (primary key)
- email: string
- password: string
- name: string
- profile_picture: string

RECIPES
- id: int (primary key)
- title: string
- description: string
- instructions: text
- public: boolean
- user_id: int (foreign key references USERS.id)

OCCASIONS
- id: int (primary key)
- name: string
- description: string
- user_id: int (foreign key references USERS.id)

GROCERY_LISTS
- id: int (primary key)
- name: string
- user_id: int (foreign key references USERS.id)

INGREDIENTS
- id: int (primary key)
- name: string
- unit_of_measurement: string
- category: string

RECIPE_INGREDIENTS
- recipe_id: int (foreign key references RECIPES.id)
- ingredient_id: int (foreign key references INGREDIENTS.id)
- quantity: float

USER_RECIPE_RATINGS
- user_id: int (foreign key references USERS.id)
- recipe_id: int (foreign key references RECIPES.id)
- rating: int

USER_RECIPE_FAVORITES
- user_id: int (foreign key references USERS.id)
- recipe_id: int (foreign key references RECIPES.id)

USER_ACTIVITY_LOG
- id: int (primary key)
- user_id: int (foreign key references USERS.id)
- activity_type: string
- timestamp: datetime
