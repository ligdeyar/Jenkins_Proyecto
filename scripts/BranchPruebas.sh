REPO_DIR= "/var/lib/jenkins/workspace/Clone_Repository/Jenkins_Proyecto"
BRANCH="Pruebas"
DEVELOPMENT_BRANCH="Desarrollo"

#Ejecucion de Trabajo  y repositorio local
#cambios aprobados en desarrollo se integran a la rama Pruebas del repositorio remoto.
echo "..***************CAMBIOS APROBADOS****************.."
echo "Sincronizando los cambios en la rama de Pruebas..."
git checkout $BRANCH

cd $REPO_DIR
git checkout $BRANCH
git pull origin $BRANCH

#Fusionar los cambios de desarrollo a prueba
echo "Fusionando cambios de Desarrollo a Pruebas..."
git merge $DEVELOPMENT_BRANCH

echo "Subiendo cambios fusionados a la rama Pruebas..."
git push origin $BRANCH

#Completacion de sincronizacion
echo "Sincronizacion y Fusion de Desarrollo a Pruebas completadas."