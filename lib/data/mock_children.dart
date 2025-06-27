import '../models/child_model.dart';
import '../models/event_model.dart';

final List<Child> mockChildren = [
  Child(
    name: 'Tommy',
    imageUrl: 'assets/images/tommie.jpg',
    events: [
      Event(
        category: 'Actividades',
        time: '08:30',
        description: 'Organizó una expedición al fondo del pasillo.',
      ),
      Event(
        category: 'Alimentación',
        time: '09:15',
        description: 'Comió cereales con forma de dinosaurio.',
      ),
      Event(
        category: 'Deposiciones',
        time: '10:00',
        description: 'Fue al orinal sin ayuda, como un líder.',
      ),
      Event(
        category: 'Observaciones',
        time: '13:30',
        description: 'Inventó una historia sobre extraterrestres.',
      ),
      Event(
        category: 'Siestas',
        time: '15:00',
        description: 'Durmió abrazado a su peluche de Reptar.',
      ),
    ],
  ),
  Child(
    name: 'Chuckie',
    imageUrl: 'assets/images/chuckie.jpg',
    events: [
      Event(
        category: 'Alimentación',
        time: '09:00',
        description: 'Comió a regañadientes un puré de verduras.',
      ),
      Event(
        category: 'Actividades',
        time: '10:30',
        description: 'Se escondió detrás del sofá cuando vio una araña.',
      ),
      Event(
        category: 'Observaciones',
        time: '11:45',
        description: 'Pidió 3 veces asegurarse de que su peluche estaba cerca.',
      ),
      Event(
        category: 'Siestas',
        time: '14:00',
        description: 'Durmió profundamente abrazando su osito.',
      ),
    ],
  ),
  Child(
    name: 'Angelica',
    imageUrl: 'assets/images/angelica.jpg',
    events: [
      Event(
        category: 'Alimentación',
        time: '08:45',
        description: 'Exigió galletas antes del desayuno.',
      ),
      Event(
        category: 'Actividades',
        time: '10:00',
        description: 'Ordenó a los demás jugar a la fiesta del té.',
      ),
      Event(
        category: 'Observaciones',
        time: '11:30',
        description: 'Tuvo un berrinche por no encontrar su muñeca Cinthia.',
      ),
      Event(
        category: 'Deposiciones',
        time: '13:00',
        description: 'Fue al baño, pero solo si alguien la acompañaba.',
      ),
      Event(
        category: 'Siestas',
        time: '15:30',
        description: 'Se negó a dormir sin su almohada rosa.',
      ),
    ],
  ),
  Child(
    name: 'Phil',
    imageUrl: 'assets/images/phil.jpg',
    events: [
      Event(
        category: 'Actividades',
        time: '09:00',
        description: 'Jugó a escarbar en la tierra buscando bichos.',
      ),
      Event(
        category: 'Alimentación',
        time: '10:30',
        description: 'Comió su papilla... ¡y parte de la de Lil!',
      ),
      Event(
        category: 'Deposiciones',
        time: '11:45',
        description: 'Se rió cuando se tiró un pedete.',
      ),
      Event(
        category: 'Observaciones',
        time: '13:15',
        description: 'Se puso barro en la nariz para asustar a los demás.',
      ),
    ],
  ),
  Child(
    name: 'Lil',
    imageUrl: 'assets/images/lil.jpg',
    events: [
      Event(
        category: 'Actividades',
        time: '09:00',
        description: 'Jugó con gusanos junto a Phil sin que le diera asco.',
      ),
      Event(
        category: 'Alimentación',
        time: '10:45',
        description: 'Pidió repetir el puré de zanahoria.',
      ),
      Event(
        category: 'Deposiciones',
        time: '12:15',
        description: 'Fue al orinal sola y luego ayudó a Phil.',
      ),
      Event(
        category: 'Observaciones',
        time: '14:30',
        description: 'Cantó canciones mientras pintaba en la pared.',
      ),
    ],
  ),
];
