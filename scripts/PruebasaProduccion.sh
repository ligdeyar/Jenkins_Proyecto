# Variables
REPO_DIR="/var/lib/jenkins/workspace/Clone_Repository/Jenkins_Proyecto"
REPO_URL="https://$GITHUB_USERNAME:$GITHUB_PASSWORD@github.com/ligdeyar/Jenkins_Proyecto.git"
BRANCH="main"
TESTING_BRANCH="Pruebas"


git checkout $BRANCH
git merge $TESTING_BRANCH
git push origin $BRANCH

echo "CAMBIOS SINCRONIADOS CORRECTAMENTE A PRODUCCION"