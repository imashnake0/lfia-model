translate([0, 1.7, 0]){
    difference(){
        difference(){
            $fn=100;
            minkowski(){
                minkowski()
                {
                cube([9.5, 2.0 , 0.1], center=true);
                cylinder(r=0.15,h=0.1, center=true);
                }
                sphere(r=0.2, $fn=200);
            }
            translate([-0.7, 0, 0.3-0.1+0.01]){
                linear_extrude(height=0.43, center=true, scale=1.2){
                    square(size = [2.2, 0.7], center=true);
                }
            }
        }
        hole();
        cut();
    }
    difference(){
        difference(){
            translate([0.3+(5.1/2), 0, 0.05]){
                cylinder(r=1, h=0.65, $fn=100, center=true);
            }
            translate([0.3+(5.1/2), 0, 10.3]){
                sphere(r=10, $fn=100);
            }
        }
        hole();
        cut();
    }
}


translate([0, -1.7, 0]){
    rotate([180, 0, 0]) {
        intersection(){
            cut();
            object();    
        }
    }
}

module object(){
    difference(){
        difference(){
            $fn=100;
            minkowski(){
                minkowski()
                {
                cube([9.5, 2.0 , 0.1], center=true);
                cylinder(r=0.15,h=0.1, center=true);
                }
                sphere(r=0.2, $fn=200);
            }
            translate([-0.7, 0, 0.3-0.1+0.01]){
                linear_extrude(height=0.4, center=true, scale=1.2){
                    square(size = [2.2, 0.7], center=true);
                }
            }
        }
        hole();
    }
    difference(){
        difference(){
            translate([0.3+(5.1/2), 0, 0.05]){
                cylinder(r=1, h=0.65, $fn=100, center=true);
            }
            translate([0.3+(5.1/2), 0, 10.3]){
                sphere(r=10, $fn=100);
            }
        }
        hole();
    }
}

module hole(){
    translate([0.3+(5.1/2), 0, 0.3]){
        scale([0.25, 0.25, 1]){
            cylinder(r=1, h=0.3, $fn=100, center=true);
        }
    }
}

module cut(){
    translate([0, 0, -0.3]){
        cube([10.6, 10, 0.6], center=true); //10.2
    }
}