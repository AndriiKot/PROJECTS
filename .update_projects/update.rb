
def m1 = (system(`ruby subtree_add_projects.rb`) )

def m2 = (system(`ruby subtree_pull_projects.rb`))

m1()

#system('ruby subtree_pull_projects-async.rb')  // !!! пропускает проекты не все изменения проходят
# когда скрип асихронный, это скрипт не отрабатывает все файлы 
