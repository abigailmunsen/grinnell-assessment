google.charts.load('current', {'packages':['sankey']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'From');
    data.addColumn('string', 'To');
    data.addColumn('number', 'Weight');
    
    //sample rand
    r = Math.floor(Math.random() * 4);     // returns a random integer from 0 to 4
    sankey_rand = [M1C1, M1C2, M1C3, M1C4];
    data.addRows(sankey_rand[r]);

// Sets chart options.
var options = {          
};

// Instantiates and draws our chart, passing in some options.
var chart = new google.visualization.Sankey(document.getElementById('sankey_basic'));
chart.draw(data, options);
}
