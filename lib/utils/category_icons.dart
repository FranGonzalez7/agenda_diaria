String getCategoryIconPath(String category) {
  switch (category) {
    case 'Alimentación':
      return 'assets/icons/alimentacion.png';
    case 'Siestas':
      return 'assets/icons/siestas.png';
    case 'Actividades':
      return 'assets/icons/actividades.png';
    case 'Deposiciones':
      return 'assets/icons/deposiciones.png';
    default:
      return 'assets/icons/observaciones.png';
    
  }
}
