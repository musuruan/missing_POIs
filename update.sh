#!/bin/bash

wget -O municipi.osm "https://overpass-api.de/api/interpreter?data=%5Bout%3Axml%5D%5Btimeout%3A300%5D%3B%0Aarea%283600365331%29-%3E.searchArea%3B%0A%0A%2F%2F%20memorizzo%20in%20allAdminBoundary%20tutti%20gli%20administrative%20boundary%20di%20tipo%20comune%20come%20oggetti%20di%20tipo%20relation%0Arelation%5B%22boundary%22%3D%22administrative%22%5D%5B%22admin_level%22%3D8%5D%28area.searchArea%29-%3E.allAdminBoundary%3B%0A%0A%2F%2Festraggo%20tutti%20i%20possibili%20elementi%20con%20tag%20amenity%3Dtownhall%20e%20li%20memorizzo%20nel%20set%20features%0A%28%0A%20%20node%5B%22amenity%22%3D%22townhall%22%5D%28area.searchArea%29%3B%0A%20%20way%5B%22amenity%22%3D%22townhall%22%5D%28area.searchArea%29%3B%0A%20%20relation%5B%22amenity%22%3D%22townhall%22%5D%28area.searchArea%29%3B%0A%29-%3E.features%3B%0A%0A%2F%2Frecurse%20down%20per%20%22espandere%22%20tutte%20le%20relation%20e%20le%20ways%20%20con%20memorizzazione%20in%20ser%20a%0A%28.features%3B%20%3E%3B%29-%3E.a%3B%0A%0A%2F%2Fmemorizzo%20nel%20set%20b%20tutte%20le%20aree%20che%20contengono%20i%20dati%20memorizzati%20nel%20set%20a.%20Ottengo%20dei%20meta-oggetti%20area%20perch%C3%A8%20l%27operatore%20is_in%20ritorna%20solo%20questo%20tipo%0A.a%20is_in%20-%3E.b%3B%0A%0A%2F%2Ffiltro%20gli%20oggetti%20area%20cercando%20solo%20quelli%20di%20tipo%20comune%20e%20li%20memorizzo%20nel%20set%20c%0Aarea.b%5Badmin_level%3D8%5D-%3E.c%3B%0A%0A%2F%2Fcon%20rel%28pivot.c%29%20riottengo%20le%20relazioni%20e%20le%20memorizzo%20nel%20set%20withFeature.%20Questo%20passaggio%20%C3%A8%20necessario%20per%20ottenere%20oggetti%20con%20tipologia%20omogenea%20rispetto%20a%20quelli%20contenuti%20in%20allAdminBoundary%0Arel%28pivot.c%29-%3E.withFeature%3B%0A%0A%2F%2Fcomputo%20la%20differenza%20fra%20i%20due%20set%20ottenendo%20quindi%20tutte%20quelle%20aree%20di%20tipo%20admin_level%3D8%20senza%20un%20townhall%0A%0A%28.allAdminBoundary%3B%20-%20.withFeature%3B%29%3B%0A%2F%2Ftogliendo%20i%20commenti%20a%20questa%20che%20segue%20vengono%20estratti%20i%20soli%20admin_centre....%20la%20query%20diventa%20molto%20pi%C3%B9%20veloce%0Anode%28r%3A%22admin_centre%22%29%3B%0A%28._%3B%3E%3B%29%3B%0A%0Aout%20meta%3B"
