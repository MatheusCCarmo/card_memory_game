import 'package:flutter/material.dart';

abstract class CardsIcons {
  List<IconData> _icons = [];

  get icons => _icons;
}

class SportsIcons extends CardsIcons {
  List<IconData> _icons = [
    Icons.sports_basketball,
    Icons.sports_mma_rounded,
    Icons.sports_soccer_rounded,
    Icons.sports_motorsports_rounded,
    Icons.sports_football_rounded,
    Icons.sports_cricket,
    Icons.sports_volleyball_sharp,
    Icons.sports_baseball,
    Icons.sports_tennis_rounded,
    Icons.sports_hockey,
  ];

  @override
  get icons => _icons;
}

class TransportIcons extends CardsIcons {
  List<IconData> _icons = [
    Icons.drive_eta,
    Icons.delivery_dining,
    Icons.train,
    Icons.subway,
    Icons.local_taxi,
    Icons.flight,
    Icons.pedal_bike,
    Icons.local_shipping,
    Icons.two_wheeler,
    Icons.directions_boat,
  ];

  @override
  get icons => _icons;
}

class FoodIcons extends CardsIcons {
  List<IconData> _icons = [
    Icons.fastfood,
    Icons.local_pizza,
    Icons.cake,
    Icons.icecream,
    Icons.dinner_dining,
    Icons.set_meal,
    Icons.tapas,
    Icons.lunch_dining,
    Icons.bakery_dining,
    Icons.local_cafe,
  ];

  @override
  get icons => _icons;
}

class BuildingIcons extends CardsIcons {
  List<IconData> _icons = [
    Icons.apartment,
    Icons.business,
    Icons.bungalow,
    Icons.home,
    Icons.store,
    Icons.account_balance,
    Icons.local_convenience_store,
    Icons.festival,
    Icons.holiday_village,
    Icons.villa,
  ];

  @override
  get icons => _icons;
}
