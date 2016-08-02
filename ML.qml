Robot {
  id: deed

  PointLight {
    id: ll
    center: {
    }
  }

  function updatelc() {
      var a =  p1.value / (180 / Math.PI);
      var r = p2.value;
      var nc = [r * Math.cos( a ), 0, r * Math.sin(a)];
      ll.center = nc;
  }

  PerformDeed { 
    name: "show-light-sphere" 
    input: ll
  }

  Param {
    text: "угол"
    max: 360
    id: p1
    onValueChanged: updatelc();
  }

  Param {
    text: "радиус"
    max: 250
    id: p2
    value: 30
    onValueChanged: updatelc();
  }

  ColorParam {
    target: ll
    id: c1
  }

  params: [p1,p2,c1]

  robotIcon: "ML"
  type: "ManakovLight"
}