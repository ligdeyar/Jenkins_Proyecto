REPO_DIR= "/var/lib/jenkins/workspace/Clone_Repository/Jenkins_Proyecto"
BRANCH="Pruebas"
<<<<<<< HEAD
=======
DEVELOPMENT_BRANCH="Desarrollo"

>>>>>>> ef217bc194557b3e2a42cca827642c78458b9648
#Ejecucion de Trabajo  y repositorio local
#cambios aprobados en desarrollo se integran a la rama Pruebas del repositorio remoto.
echo "..***************CAMBIOS APROBADOS****************.."
echo "Sincronizando los cambios en la rama de Pruebas..."
<<<<<<< HEAD
=======
git checkout $BRANCH

>>>>>>> ef217bc194557b3e2a42cca827642c78458b9648
cd $REPO_DIR
git checkout $BRANCH
git pull origin $BRANCH

#Fusionar los cambios de desarrollo a prueba
echo "Fusionando cambios de Desarrollo a Pruebas..."
<<<<<<< HEAD
git merge Desarrollo
=======
git merge $DEVELOPMENT_BRANCH
>>>>>>> ef217bc194557b3e2a42cca827642c78458b9648

echo "Subiendo cambios fusionados a la rama Pruebas..."
git push origin $BRANCH

#Completacion de sincronizacion
echo "Sincronizacion y Fusion de Desarrollo a Pruebas completadas."
<<<<<<< HEAD

#Desplegadas y Aprobadas en el servidor de pruebas.
echo "Desplegando los cambios en el servidor de pruebas..."

echo "Simulando despliegue en servidor de pruebas..."

#Completación final
echo "Despliegue en pruebas completado."
=======
>>>>>>> ef217bc194557b3e2a42cca827642c78458b9648
