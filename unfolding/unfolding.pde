import de.fhpotsdam.unfolding.*;
import de.fhpotsdam.unfolding.geo.*;
import de.fhpotsdam.unfolding.utils.*;
import de.fhpotsdam.unfolding.providers.*;
import de.fhpotsdam.unfolding.marker.*;

UnfoldingMap map;
List<Marker> countryMarkers;

void setup()  {
    size(700,500);
    //Keep in mind you need to check the terms and conditions of the map providers
    //on how you are allowed to use their map tiles. We are providing the example
    //providers for educational purposes, only.
    
    map=new UnfoldingMap(this,new Google.GoogleMapProvider());
    
    List<Feature> countries = GeoJSONReader.loadData(this, "TL_SCCO_SIG.json");
            
    //kjh: interact mode
    MapUtils.createDefaultEventDispatcher(this,map);
      
    Location seoulLocation=new Location(37.549,126.989);
    
    map.zoomAndPanTo(seoulLocation,10);
    float maxPanningDistance=30;  //in km
    map.setPanningRestriction(seoulLocation,maxPanningDistance);
    
    //Location berlinLocation=new Location(52.5,13.4);
    //Location dublinLocation=new Location(52.5,12.9);
    
    fill(0);
    SimplePointMarker seoulMarker=new SimplePointMarker(seoulLocation);
    //SimplePointMarker dublinMarker=new SimplePointMarker(dublinLocation);
    
    map.addMarkers(seoulMarker);
    
    map.setTweening(true);
    
}

void draw()  {
    map.draw(); 
    //kjh: position showing
    Location location=map.getLocation(mouseX,mouseY);
    fill(0);
    text(location.getLat()+","+location.getLon(),mouseX,mouseY);
}
