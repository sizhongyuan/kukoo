var list = [
  {
    "sex": 1, //顾客性别
    "name": "何文辉", //顾客姓名
    "country": "加拿大", //项目国家
    "countryId": "jnd22222", //国家代码
    "itemId": 1, //项目id
    "itemName": "加拿大联邦技术移民", //项目名称
    "itemCode": "fwfe", //项目代码
    "occupId": 1, //顾客职业id
    "occupName": "高级软件工程师", //顾客职业名称
    "age": 41, //顾客年龄
    "applyDate": "2016-2-2", //申请时间
    "unionApplyDate": "2016-5-2", //联邦申请时间
    "provinceDate": "2016-4-2", //联邦申请时间
    "provinceDuring": 6, //省提名周期
    "unionDuring": 7, //联邦周期
    "events": [
      {
        "date": "2016-4-2", //时间点
        "event": "递交申请补充字节", //事件名称
        "eventId": 1, //事件类别id
        "isProvince": 1, //属于省提名阶段点
        "isUnion": 0, //属于联邦周期点
        "ml": 10 //往左边靠的距离
      }, {
        "date": "2016-4-2", //时间点
        "event": "递交申请补充字节", //事件名称
        "eventId": 1, //事件类别id
        "isProvince": 1, //属于省提名阶段点
        "normalPoint": 1, //普通点
        "isUnion": 0, //属于联邦周期点
        "ml": 10 //往左边靠的距离
      }, {
        "date": "2016-4-2", //时间点
        "event": "递交申请补充字节", //事件名称
        "eventId": 1, //事件类别id
        "isProvince": 1, //属于省提名阶段点
        "isUnion": 0, //属于联邦周期点
        "ml": 10 //往左边靠的距离
      }, {
        "date": "2016-4-2", //时间点
        "event": "递交申请补充字节", //事件名称
        "eventId": 1, //事件类别id
        "isProvince": 0, //属于省提名阶段点
        "isUnion": 0, //属于联邦周期点
        "ml": 10 //往左边靠的距离
      }, {
        "date": "2016-4-2", //时间点
        "event": "递交申请补充字节", //事件名称
        "eventId": 1, //事件类别id
        "isProvince": 0, //属于省提名阶段点
        "normalPoint": 1, //普通点
        "isUnion": 0, //属于联邦周期点
        "ml": 10 //往左边靠的距离
      }, {
        "date": "2016-4-2", //时间点
        "event": "递交申请补充字节", //事件名称
        "eventId": 1, //事件类别id
        "isProvince": 0, //属于省提名阶段点
        "normalPoint": 1, //普通点
        "isUnion": 0, //属于联邦周期点
        "ml": 10 //往左边靠的距离
      }, {
        "date": "2016-4-2", //时间点
        "event": "递交申请补充字节", //事件名称
        "eventId": 1, //事件类别id
        "isProvince": 0, //属于省提名阶段点
        "isUnion": 0, //属于联邦周期点
        "ml": 10 //往左边靠的距离
      }
    ] //时间轴
  }, {
    "sex": 0, //顾客性别
    "name": "张天爱", //顾客姓名
    "country": "加拿大", //项目国家
    "countryId": "jnd22222", //国家代码
    "itemId": 1, //项目id
    "itemName": "加拿大联邦技术移民", //项目名称
    "itemCode": "fwfe", //项目代码
    "occupId": 1, //顾客职业id
    "occupName": "自由职业者", //顾客职业名称
    "age": 36, //顾客年龄
    "applyDate": "2016-2-2", //申请时间
    "unionApplyDate": "2016-5-2", //联邦申请时间
    "provinceDate": "2016-4-2", //联邦申请时间
    "provinceDuring": 6, //省提名周期
    "unionDuring": 7, //联邦周期
    "events": [
      {
        "date": "2016-4-2", //时间点
        "event": "递交申请补充字节", //事件名称
        "eventId": 1, //事件类别id
        "isProvince": 1, //属于省提名阶段点
        "isUnion": 0, //属于联邦周期点
        "ml": 10 //往左边靠的距离
      }, {
        "date": "2016-4-2", //时间点
        "event": "递交申请补充字节", //事件名称
        "eventId": 1, //事件类别id
        "isProvince": 1, //属于省提名阶段点
        "normalPoint": 1, //普通点
        "isUnion": 0, //属于联邦周期点
        "ml": 10 //往左边靠的距离
      }, {
        "date": "2016-4-2", //时间点
        "event": "递交申请补充字节", //事件名称
        "eventId": 1, //事件类别id
        "isProvince": 1, //属于省提名阶段点
        "normalPoint": 1, //普通点
        "isUnion": 0, //属于联邦周期点
        "ml": 10 //往左边靠的距离
      }, {
        "date": "2016-4-2", //时间点
        "event": "递交申请补充字节", //事件名称
        "eventId": 1, //事件类别id
        "isProvince": 0, //属于省提名阶段点
        "isUnion": 0, //属于联邦周期点
        "ml": 10 //往左边靠的距离
      }
    ] //时间轴
  }
]

_app = new Vue({
  "el": '.list-c',
  "data": {
    "list": list
  },
  created: function () {
    for (var i = 0; i < this.list.length; i++) {
      var events = this.list[i].events;
      var w = $(".events").width();
      for (var j = 0; j < events.length; j++) {
        var ml = (w - events.length * 96) / (events.length - 1);
        if (j == 0)
          ml = 0;
        events[j].ml = ml;
      }
    }
  }
})
