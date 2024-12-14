#Variables
REPO_DIR= "/var/lib/jenkins/workspace/Proyecto-IngSof_main"
REPO_URL="https://$GITHUB_USERNAME:$GITHUB_PASSWORD@github.com/ligdeyar/Jenkins_Proyecto.git"
BRANCH="main" 



# Verificar si el directorio ya existe
if [ -d "$REPO_DIR/.git" ]; then
    echo "Repositorio ya existe. Actualizando el repositorio existente..."
    cd $REPO_DIR
    git pull origin $BRANCH
else
    echo "Clonando el repositorio..."
    git clone $REPO_URL $REPO_DIR
fi