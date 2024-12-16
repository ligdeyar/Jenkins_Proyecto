# Variables
REPO_DIR="/var/lib/jenkins/workspace/Clone_Repository/"
BRANCH="main"
TESTING_BRANCH="Pruebas"

cd $REPO_DIR
git checkout $BRANCH
git merge $TESTING_BRANCH
git push origin $BRANCH

echo "CAMBIOS SINCRONIADOS CORRECTAMENTE A PRODUCCION"