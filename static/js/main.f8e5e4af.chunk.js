(this["webpackJsonpcurriculum-team"]=this["webpackJsonpcurriculum-team"]||[]).push([[0],{30:function(e,t,n){e.exports=n(46)},35:function(e,t,n){},38:function(e,t,n){},46:function(e,t,n){"use strict";n.r(t);var a=n(0),r=n.n(a),c=n(12),u=n.n(c),l=(n(35),n(19)),s=n.n(l),o=n(10),i=n(6),m=n(11),p=n(22),h=n.n(p),f=(n(38),n(39),n(49)),d=n(52),E=n(50),v=n(53),b=n(51);var w=function(){var e=Object(a.useState)([]),t=Object(m.a)(e,2),n=t[0],c=t[1],u=Object(a.useState)([{type:"PushEvent",events:[],name:"New Commits"},{type:"PullRequestEvent",events:[],name:"New Pull Requests"},{type:"CreateEvent",events:[],name:"New Repositories"},{type:"IssuesEvent",events:[],name:"New Issues"},{type:"IssueCommentEvent",events:[],name:"New Comments"}]),l=Object(m.a)(u,2),p=l[0],w=l[1],y=Object(a.useState)({}),g=Object(m.a)(y,2),j=g[0],O=g[1],k=Object(a.useState)("issues"),C=Object(m.a)(k,2),I=C[0],R=C[1];return Object(a.useEffect)((function(){var e=function(){var e=h()(),t=e.day(),n=1;return 0!==t&&1!==t||(n=t+2),e.subtract(n,"days")}().format("YYYY-MM-DD");!function(){var t,n,a;s.a.async((function(r){for(;;)switch(r.prev=r.next){case 0:return console.log("https://raw.githubusercontent.com/learn-co-curriculum/curriculum-team/master/issues_output/".concat(e,"/summary.txt")),r.next=3,s.a.awrap(fetch("https://raw.githubusercontent.com/learn-co-curriculum/curriculum-team/master/issues_output/".concat(e,"/summary.txt")).then((function(e){return e.text()})).then((function(e){return e.split("\n")})));case 3:for(a in t=(t=r.sent).filter((function(e){return""!==e})).map((function(e){return Object(i.a)({},e.split(" ")[0],[])})),n=function(n){console.log("https://raw.githubusercontent.com/learn-co-curriculum/curriculum-team/master/issues_output/".concat(e,"/").concat(Object.keys(t[n])[0],".txt")),fetch("https://raw.githubusercontent.com/learn-co-curriculum/curriculum-team/master/issues_output/".concat(e,"/").concat(Object.keys(t[n])[0],".txt")).then((function(e){return e.text()})).then((function(e){e=(e=e.split("\n")).filter((function(e){return""!==e}));var a=[];for(var r in e){var u=e[r].match(/\[(.*?)\]/g),l=e[r].match(/http(.*)/g)[0],s=e[r].match(/\]:(.*?)http/g)[0];s=s.slice(3,s.indexOf(" http")),a.push({timestamp:u[0].slice(1,u[0].length-1),user:u[1].slice(1,u[1].length-1),url:l,message:s})}a=a.sort((function(e,t){return parseInt(t.timestamp)-parseInt(e.timestamp)})),t[n][Object.keys(t[n])[0]]=a,c(t),O((function(e){return Object(o.a)({},e,Object(i.a)({},Object.keys(t[n])[0],!0))}))}))},t)n(a);case 7:case"end":return r.stop()}}))}(),console.log("https://raw.githubusercontent.com/learn-co-curriculum/curriculum-team/master/issues_output/".concat(e,"/events.json")),fetch("https://raw.githubusercontent.com/learn-co-curriculum/curriculum-team/master/issues_output/".concat(e,"/events.json")).then((function(e){return e.json()})).then((function(e){var t=p;e.forEach((function(e){var n=t.findIndex((function(t){return t.type===e.type}));t[n]&&t[n].events&&t[n].events.push(e)})),w(t);var n=function(e){O((function(n){return Object(o.a)({},n,Object(i.a)({},t[e].name,!0))}))};for(var a in t)n(a)}))}),[]),r.a.createElement("div",{className:"App"},r.a.createElement(f.a,null,r.a.createElement("h1",null,"Curriculum Health Monitor")),r.a.createElement(d.a,{activeKey:I,onSelect:function(e){return R(e)}},r.a.createElement(E.a,{eventKey:"issues",title:"Open Issues"},r.a.createElement("section",null,r.a.createElement("h2",null,"Open Issues"),n.map((function(e){var t=Object.keys(e)[0];return r.a.createElement(v.a,{key:t},r.a.createElement(v.a.Title,{onClick:function(){return O((function(e){return Object(o.a)({},e,Object(i.a)({},t,!e[t]))}))}},r.a.createElement("span",null,t," ",j[t]?"\u1433":"\u142f"),r.a.createElement("span",null,e[t].length)),j[t]?[]:r.a.createElement(v.a.Body,null,r.a.createElement(b.a,{striped:!0,bordered:!0,hover:!0,size:"sm"},r.a.createElement("tbody",null,e[t].map((function(e){var t=new Date(0);return t.setUTCSeconds(e.timestamp),r.a.createElement("tr",{key:e.message},r.a.createElement("td",null,t.toDateString()),r.a.createElement("td",null,e.message),r.a.createElement("td",null,r.a.createElement("a",{href:e.url},e.url)),r.a.createElement("td",null,r.a.createElement("a",{href:"https://github.com/".concat(e.user)},e.user)))}))))))})))),r.a.createElement(E.a,{eventKey:"events",title:"Recent Events"},r.a.createElement("section",null,r.a.createElement("h2",null,"Recent Events"),p.map((function(e){var t=e.name;return r.a.createElement(v.a,{key:t},r.a.createElement(v.a.Title,{onClick:function(){return O((function(e){return Object(o.a)({},e,Object(i.a)({},t,!e[t]))}))}},r.a.createElement("span",null,t," ",j[t]?"\u1433":"\u142f"),r.a.createElement("span",null,e.events.length)),j[t]?[]:r.a.createElement(v.a.Body,null,r.a.createElement(b.a,{striped:!0,bordered:!0,hover:!0,size:"sm"},r.a.createElement("tbody",null,e.events.map((function(e){var t=e.repo.substring(0,8)+e.repo.substring(12);return t=t.substring(0,19)+t.substring(25),r.a.createElement("tr",{key:e.name+e.repo},r.a.createElement("td",null,e.name),r.a.createElement("td",null,r.a.createElement("a",{href:t},t)))}))))))})))),r.a.createElement(E.a,{eventKey:"resources",title:"Resources"},r.a.createElement("section",null,r.a.createElement("h2",null,"Resources"),r.a.createElement("div",{className:"videos"},r.a.createElement("div",null,r.a.createElement("h4",null,"Using Ripgrep to Search for Curriculum Issues"),r.a.createElement("iframe",{title:"Using Ripgrep to Search for Curriculum Issues",width:"560",height:"315",src:"https://www.youtube.com/embed/owDib4HwWjg",frameBorder:"0",allow:"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture",allowFullScreen:!0})),r.a.createElement("div",null,r.a.createElement("h4",null,"Closing a Quiz Issue that Couldn't be Replicated"),r.a.createElement("iframe",{title:"Closing a Quiz Issue that Couldn't be Replicated",width:"560",height:"315",src:"https://www.youtube.com/embed/sK0qjPzmD6c",frameBorder:"0",allow:"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture",allowFullScreen:!0})),r.a.createElement("div",null,r.a.createElement("h4",null,"Fixing a Readme Typo"),r.a.createElement("iframe",{title:"Fixing a Readme Typo",width:"560",height:"315",src:"https://www.youtube.com/embed/34yCQYX_wnQ",frameBorder:"0",allow:"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture",allowFullScreen:!0})),r.a.createElement("div",null,r.a.createElement("h4",null,"Resolving Two Kinds of 'learn submit' Issues"),r.a.createElement("iframe",{title:"Resolving Two Kinds of 'learn submit' Issues",width:"560",height:"315",src:"https://www.youtube.com/embed/_Kx_NpzZf6w",frameBorder:"0",allow:"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture",allowFullScreen:!0})))))))};Boolean("localhost"===window.location.hostname||"[::1]"===window.location.hostname||window.location.hostname.match(/^127(?:\.(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)){3}$/));u.a.render(r.a.createElement(w,null),document.getElementById("root")),"serviceWorker"in navigator&&navigator.serviceWorker.ready.then((function(e){e.unregister()}))}},[[30,1,2]]]);
//# sourceMappingURL=main.f8e5e4af.chunk.js.map