function setupShowMap(element) {
  var map2 = new GMaps({
    div: element,
    lat: 41.8781,
    lng: -87.6298,
    maxZoom: 12
  });
  window.map2 = map2;

//projects substituted for markers
  var project = JSON.parse(element.dataset.project);
  window.project = project;

    if (project.latitude && project.longitude) {
      var marker = map2.addMarker({
        lat: project.latitude,
        lng: project.longitude,
        title: project.address
      });
    }

  map2.fitZoom();
}

document.addEventListener("turbolinks:load", function() {
  var element = document.querySelector('#map_show')
  if (element) {
    setupShowMap(element)
  }
});
