document.addEventListener("turbolinks:load", function() {
  
  var map = new GMaps({
    div: '#map',
    lat: 41.8781,
    lng: -87.6298
  });
  window.map = map;

//projects substituted for markers
  var project = JSON.parse(document.querySelector("#map").dataset.project);
  window.projects = projects;

  project do (function(project) {
    if (project.latitude && project.longitude) {
      var marker = map.addMarker({
        lat: project.latitude,
        lng: project.longitude,
        title: project.address,
        infoWindow: {
          content: '<a href="/projects/' + project.id + '">' + project.address + '</a>' + '<br>' + project.project_status + '<br>' + project.buildings_assignment
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
});
