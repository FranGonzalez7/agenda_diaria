import 'package:flutter_test/flutter_test.dart';
import 'package:agenda_diaria/models/child_model.dart';
import 'package:agenda_diaria/models/event_model.dart';
import 'package:agenda_diaria/utils/event_filter.dart';

void main() {
  group('filterEvents', () {
    //Objeto de prueba:
    final child = Child(
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
    );

    test('devuelve todos los eventos si no hay categoría seleccionada', () {
      final result = filterEvents(child, {});
      expect(result.length, 5);
    });

    test('filtra eventos por categoría', () {
      final result = filterEvents(child, {'Alimentación'});
      expect(result.length, 1);
      expect(result.first.category, 'Alimentación');
    });

    test('filtra correctamente múltiples categorías', () {
      final result = filterEvents(child, {'Siestas', 'Actividades'});
      expect(result.length, 2);
      expect(result.any((e) => e.category == 'Siestas'), true);
      expect(result.any((e) => e.category == 'Actividades'), true);
    });
  });
}
