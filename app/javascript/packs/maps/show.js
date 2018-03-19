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
        title: project.address,
        infoWindow: {
          content: '<strong>' + project.address + '</strong>' + '<br>' + '<strong>Status: </strong>' + project.project_status + '<br>' + '<strong>Buildings Assignment: </strong>' + project.buildings_assignment + '<br>' + '<strong>Building Type: </strong>' + project.building_type + '<br>' + '<strong>Project Date: </strong>' + project.date + '<br>' + '<strong>Impact: </strong>' + project.impact + '<br>' + '<strong>Project Type: </strong>' + project.project_type
        }
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
