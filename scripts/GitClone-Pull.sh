#Variables
REPO_DIR= "/var/lib/jenkins/workspace/Clone_Repository/Jenkins_Proyecto"
REPO_URL="https://$GITHUB_USERNAME:$GITHUB_PASSWORD@github.com/ligdeyar/Prueba_Jenkins.git"
BRANCH="main" 


#Veriificar si ya existe el repositorio 
if [ ! -d "$REPO_DIR" ]; then
    echo "Clonando el repositorio..."
    git clone $REPO_URL
else
    echo "El repositorio ya existe, actualizando..."
    cd $REPO_DIR
    git pull origin $BRANCH
fi