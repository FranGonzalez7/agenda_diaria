import '../models/child_model.dart';
import '../models/event_model.dart';

final List<Child> mockChildren = [
  Child(
    name: 'Sansa',
    imageUrl: 'https://thronesapi.com/assets/images/sansa-stark.jpeg',
    events: [
      Event(
        category: 'Alimentación',
        time: '08:15',
        description: 'Desayunó pan con miel y té.',
      ),
      Event(
        category: 'Deposiciones',
        time: '09:30',
        description: 'Fue al baño sin ayuda y se lavó las manos.',
      ),
      Event(
        category: 'Actividades',
        time: '10:30',
        description: 'Pintó un castillo con acuarelas.',
      ),
      Event(
        category: 'Observaciones',
        time: '15:00',
        description: 'Tranquila durante la tarde, jugó sola.',
      ),
      
      Event(
        category: 'Observaciones',
        time: '18:00',
        description: 'Muy tranquila durante la tarde, pidió cuentos.',
      ),
    ],
  ),
  Child(
    name: 'Arya',
    imageUrl: 'https://thronesapi.com/assets/images/arya-stark.jpg',
    events: [
      Event(
        category: 'Siestas',
        time: '12:00',
        description: 'Durmió 45 minutos después de entrenar.',
      ),
      Event(
        category: 'Observaciones',
        time: '14:30',
        description: 'Muy activa y con mucha energía.',
      ),
      Event(
        category: 'Actividades',
        time: '16:00',
        description: 'Practicó esgrima con un palo de madera.',
      ),
    ],
  ),
  Child(
    name: 'Bran',
    imageUrl: 'https://thronesapi.com/assets/images/bran-stark.jpg',
    events: [
      Event(
        category: 'Deposiciones',
        time: '09:00',
        description: 'Fue al baño con ayuda.',
      ),
      Event(
        category: 'Alimentación',
        time: '13:00',
        description: 'Almorzó estofado de verduras y fruta.',
      ),
      Event(
        category: 'Siestas',
        time: '14:15',
        description: 'Descansó profundamente durante una hora.',
      ),
    ],
  ),
  Child(
    name: 'Rickon',
    imageUrl: 'https://thronesapi.com/assets/images/rickon.jpg',
    events: [
      Event(
        category: 'Actividades',
        time: '10:00',
        description: 'Jugó con sus hermanos en el jardín.',
      ),
      Event(
        category: 'Alimentación',
        time: '12:30',
        description: 'Comió puré de calabaza y yogur.',
      ),
      Event(
        category: 'Observaciones',
        time: '17:00',
        description: 'Muy risueño, mostró buen ánimo todo el día.',
      ),
    ],
  ),
];
