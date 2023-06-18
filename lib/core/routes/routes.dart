import 'package:go_router/go_router.dart';

import 'package:pokedex_egsys/features/pokedex/domain/entities/pokemon_entity.dart';
import 'package:pokedex_egsys/features/pokedex/presenter/pages/details/details_page.dart';
import 'package:pokedex_egsys/features/pokedex/presenter/pages/home/home_page.dart';
import 'package:pokedex_egsys/features/pokedex/presenter/pages/onBoarding/onboarding_page.dart';

final routes = GoRouter(
  initialLocation: '/onBoarding',
  routes: [
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => const OnBoardingPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
        path: '/details',
        builder: (context, state) {
          return DetailsPage(pokemonEntity: state.extra as PokemonEntity);
        }),
  ],
);
