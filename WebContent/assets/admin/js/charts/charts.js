//User
(function(){
	var myChart = echarts.init(document.getElementById("index-line-1"));
	
	option = {

    tooltip: {
        trigger: 'axis'
    },
    legend: {
        data:['总用户数','新注册用户数'],
        x: "right"
    },
    grid: {
        left: '3%',
        right: '4%',
        bottom: '3%',
        containLabel: true
    },
    
    xAxis:  {
        type: 'category',
        boundaryGap: false,
        data: ['23日','24日','25日','26日','27日','28日','29日']
    },
    yAxis: {
        type: 'value'
    },
    series: [
        {
            name:'总用户数',
            type:'line',
            data:[0, 1, 2, 5, 5]
        },
        {
            name:'新注册用户数',
            type:'line',
            data:[0, 1, 1, 3, 0]
        }
    ]
};
	myChart.setOption(option);
})();





//来访者信息
(function(){
	var myChart = echarts.init(document.getElementById("index-pie-1"));
	
	option = {
    tooltip : {
        trigger: 'item',
        formatter: "{a} <br/>{b} : {c} ({d}%)"
    },
    legend: {
        orient : 'vertical',
        x : 'left',
        data:['直接访问','搜索引擎']
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType : {
                show: true, 
                type: ['pie', 'funnel'],
                option: {
                    funnel: {
                        x: '25%',
                        width: '50%',
                        funnelAlign: 'center',
                        max: 1548
                    }
                }
            },
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    series : [
        {
            name:'访问来源',
            type:'pie',
            radius : ['50%', '70%'],
            itemStyle : {
                normal : {
                    label : {
                        show : false
                    },
                    labelLine : {
                        show : false
                    }
                },
                emphasis : {
                    label : {
                        show : true,
                        position : 'center',
                        textStyle : {
                            fontSize : '20',
                            fontWeight : 'bold'
                        }
                    }
                }
            },
            data:[
                {value:282, name:'直接访问'},
                {value:14, name:'搜索引擎'}
            ]
        }
    ]
};
	myChart.setOption(option);
})();






////聊天室概况
//(function(){
//	var myChart = echarts.init(document.getElementById("index-line-1"));
//	
//	option = {
//
//  tooltip: {
//      trigger: 'axis'
//  },
//  legend: {
//      data:['总用户数','新注册用户数'],
//      x: "right"
//  },
//  grid: {
//      left: '3%',
//      right: '4%',
//      bottom: '3%',
//      containLabel: true
//  },
//  
//  xAxis:  {
//      type: 'category',
//      boundaryGap: false,
//      data: ['23日','24日','25日','26日','27日','28日','29日']
//  },
//  yAxis: {
//      type: 'value'
//  },
//  series: [
//      {
//          name:'总用户数',
//          type:'line',
//          data:[0, 1, 2, 5]
//      },
//      {
//          name:'新注册用户数',
//          type:'line',
//          data:[0, 1, 1, 3]
//      }
//  ]
//};
//	myChart.setOption(option);
//})();
//
//
//
