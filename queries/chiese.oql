[out:xml][timeout:300][maxsize:4000000000];
area(3600365331)->.searchArea;

// memorizzo in allAdminBoundary tutti gli administrative boundary di tipo comune come oggetti di tipo relation
relation["boundary"="administrative"]["admin_level"=8](area.searchArea)->.allAdminBoundary;

//estraggo tutti i possibili elementi con tag amenity=townhall e li memorizzo nel set features
(
  node["amenity"="place_of_worship"]["religion"="christian"]["denomination"="catholic"](area.searchArea);
  way["amenity"="place_of_worship"]["religion"="christian"]["denomination"="catholic"](area.searchArea);
  relation["amenity"="place_of_worship"]["religion"="christian"]["denomination"="catholic"](area.searchArea);
  node["amenity"="place_of_worship"]["religion"="christian"]["denomination"="roman_catholic"](area.searchArea);
  way["amenity"="place_of_worship"]["religion"="christian"]["denomination"="roman_catholic"](area.searchArea);
  relation["amenity"="place_of_worship"]["religion"="christian"]["denomination"="roman_catholic"](area.searchArea);
)->.features;

//recurse down per "espandere" tutte le relation e le ways  con memorizzazione in ser a
(.features; >;)->.a;

//memorizzo nel set b tutte le aree che contengono i dati memorizzati nel set a. Ottengo dei meta-oggetti area perchè l'operatore is_in ritorna solo questo tipo
.a is_in ->.b;

//filtro gli oggetti area cercando solo quelli di tipo comune e li memorizzo nel set c
area.b[admin_level=8]->.c;

//con rel(pivot.c) riottengo le relazioni e le memorizzo nel set withFeature. Questo passaggio è necessario per ottenere oggetti con tipologia omogenea rispetto a quelli contenuti in allAdminBoundary
rel(pivot.c)->.withFeature;

//computo la differenza fra i due set ottenendo quindi tutte quelle aree di tipo admin_level=8 senza un townhall

(.allAdminBoundary; - .withFeature;);
//togliendo i commenti a questa che segue vengono estratti i soli admin_centre.... la query diventa molto più veloce
node(r:"admin_centre");
(._;>;);

out meta;

