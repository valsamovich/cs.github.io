package com.valerysamovich.service;
/**
* @author Arpit Mandliya
*/
 
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
 
@Path("ConversionService")
public class ConversionCommand {
     @GET
     @Path("/InchToFeet/{i}")
      @Produces(MediaType.TEXT_XML)
      public String convertInchToFeet(@PathParam("i") int i) {
 
        int inch=i;
        double feet = 0;
        feet =(double) inch/12;
      
        return "<InchToFeetService>"
        + "<Inch>" + inch + "</Inch>"
          + "<Feet>" + feet + "</Feet>"
         + "</InchToFeetService>";
      }
 
      @Path("/FeetToInch/{f}")
      @GET
      @Produces(MediaType.TEXT_XML)
      public String convertFeetToInch(@PathParam("f") int f) {
       int inch=0;
          int feet = f;
          inch = 12*feet;
   
          return "<FeetToInchService>"
            + "<Feet>" + feet + "</Feet>"
            + "<Inch>" + inch + "</Inch>"
            + "</FeetToInchService>";
      }
}
