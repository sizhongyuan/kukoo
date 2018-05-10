var rv = {
  "input": "",
  "recommend": [{
    "projectName": "EE",
    "country": "加拿大",
    "projectType": "技术移民",
    "major": "您",
    "language": "英语",
    "visaType": "PR",
    "capital": "5万",
    "period": "3年",
    "intro": "EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介",
    "score": 369,
    "pass": 420
  }, {
    "projectName": "EE",
    "country": "加拿大",
    "projectType": "技术移民",
    "major": "您",
    "language": "英语",
    "visaType": "PR",
    "capital": "5万",
    "period": "3年",
    "intro": "EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介EE项目简介",
    "score": 369,
    "pass": 420
  }],
  "promote": [{
    "projectName": "EE",
    "country": "加拿大",
    "major": "您",
    "language": "英语",
    "a": "存中文专业名称数组",
    "b": "项目得分",
    "c": "通过分数",
    "visaType": "PR",
    "capital": "5万",
    "period": "3年",
    "intro": "EE项目简介",
    "score": 369,
    "pass": 420
  }, {
    "projectName": "EE",
    "country": "加拿大",
    "major": "您",
    "language": "英语",
    "visaType": "PR",
    "capital": "5万",
    "period": "3年",
    "intro": "EE项目简介",
    "score": 369,
    "pass": 420
  }],
  "Quebec": [{
    "projectName": "EE",
    "country": "加拿大",
    "major": "您",
    "visaType": "PR",
    "capital": "5万",
    "period": "3年",
    "intro": "EE项目简介",
    "specialty": [
      ["专业1", "专业2", "专业3"],
      ["专业1", "专业2", "专业3"]
    ],
    "learn": "是",
    "score": 369,
    "pass": 420
  }]
}

Vue.component('project-score', {
  template: '#project-template',
  props: ["msg", "type"],
  data: function() {
    return this.msg;
  }
});

_app = new Vue({
  "el": '.main',
  "data": {
    "rv": rv,
    "change1": false
  },
  mounted: function() {},
  updated: function() {},
  methods: {

  }
});


$.ajax({
  url: "/kukoo/markingOLController/addMarkingOL",
  type: "get",
  data: {
    marking: {}
  },
  dataType: "json",
  success: function(result) {
    // console.log(JSON.stringify(result));
    // document.getElementById("fanhuikuang").value = JSON.stringify(result);
  }
});
