# Spring 2016 Migration Marathon (It's Always Sunny)

[Assignment Here](https://learn.launchacademy.com/teams/spring-2016/curricula/onsite/lessons/migration-marathon)

### Instructions

```no-highlight
git clone https://github.com/justinhuynh/spring16_migration_marathon.git
bundle
```

Rename `config/database.example.yml` to `config/database.yml`

```no-highlight
rake db:drop (if you have an existing database of the same name)
rake db:create
rake db:migrate
rake db:seed
```

To poke around and check things out:

`pry -r ./app.rb` from the project root (the directory that `app.rb` is in)
