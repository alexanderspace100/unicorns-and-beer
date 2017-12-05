# Day 4
# - REST (CRUD / routes)
# - HTTP
# - ActionCable / Websockets ;)
# - TODO: rails-boilerplate

dictionary = {
  'bird' => {
    'de' => 'vogel',
    'en' => 'bird',
    'ro' => 'pasare',
    'sv' => 'fagel',
    'it' => 'uccello',
    'sp' => 'pájaro',
  },
  'car' => {
    'de' => 'auto',
    'en' => 'car',
    'ro' => 'masina',
    'sv' => 'bil',
    'it' => 'auto',
    'sp' => 'coche',
  }
}



match api_path + '/languages',     to: 'languages#index',             via: :get

match api_path + '/languages',     to: 'languages#create',            via: :post
match api_path + '/languages/:id', to: 'languages#show',              via: :get
match api_path + '/languages/:id', to: 'languages#update',            via: :put
match api_path + '/languages/:id', to: 'languages#destroy',           via: :delete


match api_path + '/words',     to: 'words#index',             via: :get

match api_path + '/words',     to: 'words#create',            via: :post
match api_path + '/words/:id', to: 'words#show',              via: :get
match api_path + '/words/:id', to: 'words#update',            via: :put
match api_path + '/words/:id', to: 'words#destroy',           via: :delete


match api_path + '/word/:word_id/translations',     to: 'word/translations#index',             via: :get

match api_path + '/word/:word_id/translations',     to: 'word/translations#create',            via: :post
match api_path + '/word/:word_id/translations/:id', to: 'word/translations#show',              via: :get
match api_path + '/word/:word_id/translations/:id', to: 'word/translations#update',            via: :put
match api_path + '/word/:word_id/translations/:id', to: 'word/translations#destroy',           via: :delete




CRUD

create POST
read   GET
update PUT
delete DELETE


Client 1:
---------
-> GET Ticket 1
<- respond with Ticket 1
---------

Client 2:
---------
-> PUT Ticket 1
<- respond 200
---------




