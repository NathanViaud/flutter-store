# store

## Questions

### Pourquoi utiliser un factory constructor ?

Un factory constructor permet de retourner une instance d'une classe à partir d'une autre source (souvent utilisé pour la désérialisation)

### Pourquoi utiliser notifyListener?

Pour notifier les vues qu'un changement a eu lieu dans le modèle

### Que se passe-t-il si on oublie notifyListeners()?

La vue ne sera pas mise à jour

### Quelle est la responsabilité du ViewModel dans MVVM?

Le ViewModel est le pont entre le modèle et la vue
