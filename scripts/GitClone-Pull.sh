#Variables
REPO_DIR= "/var/lib/jenkins/workspace/Clone_Repository/Jenkins_Proyecto"
REPO_URL="https://$GITHUB_USERNAME:$GITHUB_PASSWORD@github.com/ligdeyar/Jenkins_Proyecto.git"
BRANCH="main" 


#Veriificar si ya existe el repositorio 
if [ -d "$REPO_DIR" ]; then
    echo "Actualizando el repositorio existente..."
    cd $REPO_DIR
    git pull origin $BRANCH
else
    echo "Clonando el repositorio..."
    git clone $REPO_URL $REPO_DIR
fi