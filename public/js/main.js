var data = {
    labels: fellows,
    datasets: [
        {
            label: "Followers",
            fillColor: "rgba(235, 119, 26, 0.7)",
            strokeColor: "rgba(235, 119, 26, 1)",
            highlightFill: "rgba(235, 119, 26, 1)",
            highlightStroke: "rgba(235, 119, 26, 1)",
            data: followers
        },
        {
            label: "Friends",
            fillColor: "rgba(151,187,205,0.5)",
            strokeColor: "rgba(151,187,205,0.8)",
            highlightFill: "rgba(151,187,205,0.75)",
            highlightStroke: "rgba(151,187,205,1)",
            data: friends
        }
    ]
};

// Get context
var ctx1 = document.getElementById("example1").getContext("2d");
var ctx2 = document.getElementById("example2").getContext("2d");

// Place the bar chart
var myBarChart = new Chart(ctx1).Bar(data, {
    scaleShowGridLines : true,
    legendTemplate : "<ul class=\"<%=name.toLowerCase()%>-legend\"><% for (var i=0; i<datasets.length; i++){%><li><span style=\"background-color:<%=datasets[i].fillColor%>\"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>"
});

// Place the polar chart
var myRadarChart = new Chart(ctx2).Radar(data);
