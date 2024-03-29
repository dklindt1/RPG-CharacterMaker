import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/routes.dart';
import 'src/CharService.dart';

@Component(
  selector: 'my-app',
  template: '''
    <nav>
    <a [routerLink]="RoutePaths.characters.toUrl()"
       [routerLinkActive]="'active'">Characters</a>
       
    <a [routerLink]="RoutePaths.search.toUrl()"
       [routerLinkActive]="'active'">Search</a>
       
    <a [routerLink]="RoutePaths.ccreate.toUrl()"
       [routerLinkActive]="'active'">Create Character</a>
    </nav>
    <router-outlet [routes] = "Routes.all"></router-outlet>
  ''',
  styleUrls: ['app_component.css'],
  directives: [routerDirectives],
  providers: [ClassProvider(CharService)],
  exports: [RoutePaths, Routes],
)

class AppComponent{}