import 'package:take_care_demo_app/models/person.dart';

import '../models/filter_options.dart';

final List<Person> falseData = [
  Person(
    id: 1,
    name: 'Marian Lucica',
    age: 80,
    imageUrl:
        'https://images.unsplash.com/photo-1566616213894-2d4e1baee5d8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80',
    description:
        'Doamna Ioana, o batranica cu probleme de sanatate, are nevoie de un ingrijitor dedicat pentru a o ajuta cu activitatile zilnice acasa.',
    tasks: [
      'Sa dozezi pastilele necesare la intervale corespunzatoare',
      'Sa ingrjieasca gradina',
      'Sa o invete sa utilizeze tehnologia',
    ],
  ),
  Person(
    id: 2,
    name: 'Jhon Jhon',
    age: 75,
    imageUrl:
        'https://images.unsplash.com/photo-1562457753-6867bda028cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1166&q=80',
    description:
        'Doamna Ioana, o batranica cu probleme de sanatate, are nevoie de un ingrijitor dedicat pentru a o ajuta cu activitatile zilnice acasa.',
    tasks: [
      'Sa dozezi pastilele necesare la intervale corespunzatoare',
      'Sa ingrjieasca gradina',
      'Sa o invete sa utilizeze tehnologia',
    ],
  ),
  Person(
    id: 3,
    name: 'Aioanei Maria',
    age: 73,
    imageUrl:
        'https://images.unsplash.com/photo-1498757581981-8ddb3c0b9b07?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=688&q=80',
    description:
        'Doamna Ioana, o batranica cu probleme de sanatate, are nevoie de un ingrijitor dedicat pentru a o ajuta cu activitatile zilnice acasa.',
    tasks: [
      'Sa dozezi pastilele necesare la intervale corespunzatoare',
      'Sa ingrjieasca gradina',
      'Sa o invete sa utilizeze tehnologia',
    ],
  ),
  Person(
    id: 4,
    name: 'Aurica Ilonta',
    age: 77,
    imageUrl:
        'https://images.unsplash.com/photo-1505685679686-2490cab6217d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
    description:
        'Doamna Ioana, o batranica cu probleme de sanatate, are nevoie de un ingrijitor dedicat pentru a o ajuta cu activitatile zilnice acasa.',
    tasks: [
      'Sa dozezi pastilele necesare la intervale corespunzatoare',
      'Sa ingrjieasca gradina',
      'Sa o invete sa utilizeze tehnologia',
    ],
  ),
];

final List<FilterOptions> filters = [
  FilterOptions('range', true),
  FilterOptions('difficulty', true),
  FilterOptions('pay', true),
];
