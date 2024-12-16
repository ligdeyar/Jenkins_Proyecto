REPO_DIR= "/var/lib/jenkins/workspace/Clone_Repository/"
BRANCH='Desarrollo'
#Ejecucion de Trabajo  y repositorio local
#cambios locales se integran a la rama desarrollo del repositorio remoto.
echo "Sincronizando los cambios en la rama de Desarrollo..."
cd $REPO_DIR
git checkout $BRANCH
git pull origin $BRANCH


#Completacion
 echo "Sincronizacion de desarrollo completadas."