
system(`ruby subtree_add_projects.rb`) 
sleep 5
system(`ruby subtree_pull_projects.rb`)
#system('ruby subtree_pull_projects-async.rb')  // !!! пропускает проекты не все изменения проходят
# когда скрип асихронный, это скрипт не отрабатывает все файлы 
