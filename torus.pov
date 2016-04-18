//
#version 3.7;

#include "colors.inc"
#include "skies.inc"
#include "glass.inc"
#include "shapes.inc"
#include "shapes2.inc"


global_settings {
	assumed_gamma 2.2
	max_trace_level 7
}


#declare tick = clock;
#if (tick = 0 & tick =1)
	#declare tick = 1.2;
#end

camera {
	location <1,5,-7>
	look_at <0,3,0>
	angle 70
}


light_source { <0, 10, 0> color rgb 1}

light_source { <-10, 10, 0> color rgb 1}
light_source { <10, 10, 0> color rgb 1}
light_source { <0, 10, 10> color rgb 1}
light_source { <0, 10, -10> color rgb 1}




sky_sphere {
    S_Cloud4
}

#declare tubes = 
union{
		torus { 1.0,0.25  rotate<0,0,0>
        texture { pigment{ color rgbt<1,1,1,0.7>}
                  finish { phong 1 reflection{ 0.00 metallic 0.00} } 
                } // end of texture
        scale <1,1,1> rotate<0,0,30> // translate<0,0.25,0>
      } // end of torus  -------------------------------              
		torus { 1.0,0.25  rotate<0,0,0>
        texture { pigment{ color rgbt<1,1,.1,0.7>}
                  finish { phong 1 reflection{ 0.00 metallic 0.00} } 
                } // end of texture
        scale <1,1,1> rotate<0,0,-20> translate<0,1.2,0>
      } // end of torus  -------------------------------              
		torus { 1.0,0.25  rotate<0,0,0>
        texture { pigment{ color rgbt<1,.1,.1,0.7>}
                  finish { phong 1 reflection{ 0.00 metallic 0.00} } 
                } // end of texture
        scale <1,1,1> rotate<0,0,20> translate<0,2.4,0>
      } // end of torus  -------------------------------              
		torus { 1.0,0.25  rotate<0,0,0>
        texture { pigment{ color rgbt<.1,.1,1,0.7>}
                  finish { phong 1 reflection{ 0.00 metallic 0.00} } 
                } // end of texture
        scale <1,1,1> rotate<0,0,-20> translate<0,3.6,0>
      } // end of torus  -------------------------------              
		torus { 1.0,0.25  rotate<0,0,0>
        texture { pigment{ color rgbt<.1,1,.1,0.7>}
                  finish { phong 1 reflection{ 0.00 metallic 0.00} } 
                } // end of texture
        scale <1,1,1> rotate<0,0,20> translate<0,4.8,0>
      } // end of torus  -------------------------------              
};


object{tubes rotate y*clock*360}
