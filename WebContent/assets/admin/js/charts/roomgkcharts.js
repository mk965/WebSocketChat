//roomgk
(function(){
	var myChart = echarts.init(document.getElementById("roomgk-line-1"));
	
	option = {

    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data:['当天总发言条数'],
        x: "right"
    },
    
    xAxis:  {
        type: 'category',
        boundaryGap: false,
        data: ['23日','24日','25日','26日','27日','28日','29日']
    },
    yAxis: {
        type: 'value',
        axisLabel: {
            formatter: '{value} 条'
        }
    },
    series: [
        {
            name:'当天总发言条数',
            type:'line',
            data:[35, 57, 98, 33, 156, 378],
            markPoint: {
                data: [
                    {type: 'max', name: '最大值'},
                    {type: 'min', name: '最小值'}
                ]
            },
            markLine: {
                data: [
                    {type: 'average', name: '平均值'}
                ]
            }
        }
    ]
};
	myChart.setOption(option);
})();



