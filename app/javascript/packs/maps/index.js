function setupIndexMap(element) {
  var map = new GMaps({
    div: element,
    lat: 41.8781,
    lng: -87.6298
  });
  window.map = map;

//projects substituted for markers
  var projects = JSON.parse(element.dataset.projects);
  window.projects = projects;

  projects.forEach(function(project) {
    if (project.latitude && project.longitude) {
      var marker = map.addMarker({
        lat: project.latitude,
        lng: project.longitude,
        title: project.address,
        infoWindow: {
          content: '<strong><a href="/projects/' + project.id + '">' + project.address + '</a></strong>' + '<br>' + '<strong>Status: </strong>' + project.project_status + '<br>' + '<strong>Buildings Assignment: </strong>' + project.buildings_assignment + '<br>' + '<strong>Building Type: </strong>' + project.building_type + '<br>' + '<strong>Project Date: </strong>' + project.date + '<br>' + '<strong>Impact: </strong>' + project.impact + '<br>' + '<strong>Project Type: </strong>' + project.project_type
        }
      });
    } 
  });

  map.fitZoom();

  document.querySelector("#redo-search").addEventListener("click", function(e) {
    e.preventDefault();

    var bounds = map.getBounds();
    var location = bounds.getSouthWest().toUrlValue() + "," + bounds.getNorthEast().toUrlValue();

    Turbolinks.visit(`/projects?l=${location}`);
  });
}

document.addEventListener("turbolinks:load", function() {
  var element = document.querySelector('#map')
  if (element) {
    setupIndexMap(element)
  }
});
