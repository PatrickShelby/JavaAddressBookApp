name "web_app"

run_list(
  'recipe[java]',
  'recipe[tomcat]',
  'recipe[nginx]',
  'recipe[addressapp]',
  'recipe[java_sql]'
)
