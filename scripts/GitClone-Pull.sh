#Variables
REPO_DIR= "/var/lib/jenkins/workspace/Clone_Repository/Jenkins_Proyecto"
REPO_URL="https://$GITHUB_USERNAME:$GITHUB_PASSWORD@github.com/ligdeyar/Jenkins_Proyecto.git"
BRANCH="main" 



# Verificar si el directorio ya existe
if [ -d "$REPO_DIR/.git" ]; then
    echo "Repositorio ya existe. Actualizando el repositorio existente..."
    cd $REPO_DIR
    git pull origin $BRANCH
else
    # Verificar si el directorio existe pero no es un repositorio Git
    if [ -d "$REPO_DIR" ]; then
        echo "El directorio '$REPO_DIR' ya existe, pero no es un repositorio Git válido. Eliminando y clonando de nuevo..."
        rm -rf $REPO_DIR  # Eliminar el directorio y clonar nuevamente
    fi
    echo "Clonando el repositorio..."
    git clone $REPO_URL $REPO_DIR
fi