(window.webpackJsonp=window.webpackJsonp||[]).push([[7],{"68pG":function(e,a,t){e.exports={container:"_68871879825e6f5db2705f294de96d55-scss",initialsFallback:"_52e0d87af5baaeb8b93f3a2d1407ea56-scss"}},R1yB:function(e,a,t){e.exports={container:"aaa7bd03749f0244fedd0f2e77939742-scss",avatar:"_900fb19c743dc1dcf672c0994b48e617-scss",name:"b1ba717afa5c13532388f1f1bfaa2463-scss",leaveButton:"f57ea564058bfb693cd9ffc43781ecbb-scss"}},Rypv:function(e,a,t){"use strict";var s=t("8VmE"),n=t.n(s),i=t("mXGw"),c=t.n(i),l=t("yVym"),r=t("2Uh0");const o=e=>e;a.a=e=>c.a.createElement(l.b,n()({id:r.j,collect:o,holdToDisplay:-1},e))},jEDb:function(e,a,t){e.exports={container:"_14fa57c69139173af30e4bd9d1fa045f-scss",headerTitle:"be9f713cb77d50b58c580cd6b89fc7ee-scss",descriptionText:"_0543d538df232189569f578f54f6b048-scss",betaLabel:"_25c17598d3c7619a0c300ff6ce263f84-scss",privacyDisclaimer:"_7544cb8dfec40155dd43f7989f5db8e7-scss",inviteButton:"f58ce3256681b37bd462e28e71f1d76c-scss",inviteMoreFriendsMessage:"_060360d686aca75ab6eadeed58d2e74e-scss"}},ousF:function(e,a,t){"use strict";t.r(a),t.d(a,"SocialListeningCard",(function(){return _}));t("W0B4");var s=t("mXGw"),n=t.n(s),i=t("/m4v"),c=t("CNRc"),l=t("gN5F"),r=t("wJTk"),o=t.n(r),d=t("34YF"),m=t("Rypv"),b=t("Ypwk"),f=t("jEDb"),u=t.n(f),p=t("8I+N"),v=t("eI+U"),g=t("+CXe"),h=t("68pG"),E=t.n(h);function w({username:e="",displayName:a="",imageUrl:t,typeVariant:s=c.a.balladBold}){return n.a.createElement("div",{className:E.a.container},n.a.createElement(g.a,{src:t,alt:a},n.a.createElement(c.a.span,{className:E.a.initialsFallback,variant:s,style:{backgroundColor:N(e)}},Array.from(a)[0])))}function N(e){const a=[v.salmon,v.electricSeafoam,v.azure,v.lavender,v.orange,v.bole];return a[(e.length||0)%a.length]}var y=t("R1yB"),L=t.n(y);function B({username:e,displayName:a,imageUrl:t,shouldShowLeaveButton:s,isHost:i,onLeave:c}){const r=o.a.profileURI(e).toURI(),d=i?l.a.get(328):l.a.get(329);return n.a.createElement("div",{className:L.a.container},n.a.createElement("div",{className:L.a.avatar},n.a.createElement(w,{username:e,displayName:a,imageUrl:t})),n.a.createElement(p.a,{className:`${L.a.name} ellipsis-one-line`,to:r},a),s&&n.a.createElement("button",{className:L.a.leaveButton,onClick:c,"aria-label":d,title:d},n.a.createElement("svg",{xmlns:"http://www.w3.org/2000/svg",width:"20",height:"20",fill:"none",viewBox:"0 0 20 20"},n.a.createElement("path",{fill:"currentColor",d:"M16.962 3.627l-.59-.588L10 9.411 3.627 3.039l-.588.588L9.411 10l-6.372 6.372.588.59L10 10.589l6.372 6.373.59-.59L10.589 10l6.373-6.373z"}))))}var j=t("U2jI");const U=({socialListening:{session:e,isLoading:a,hasSubscribed:t,error:s}={},onlineStatus:{online:n}={}})=>({session:e,isLoading:a,hasSubscribed:t,error:s,isOnline:n});function _({isVisible:e}){var a;const t=Object(i.c)(),{session:r,isLoading:f,hasSubscribed:p,error:v,isOnline:g}=Object(i.d)(U);Object(s.useEffect)(()=>{p||t(Object(b.i)())},[t,p]),Object(s.useEffect)(()=>{g&&e&&t(Object(b.g)())},[t,g,e]);const h=Object(j.c)("listen_together_max_number_of_participants");if(!g)return null;const E=(null==r?void 0:null===(a=r.participants)||void 0===a?void 0:a.length)||0,w=E===h,{isSessionOwner:N,hasNonHostParticipants:y,participants:L=[],joinSessionToken:_}=r||{},k=v&&!f,O=l.a.get(319),S=y?l.a.get(320):l.a.get(321);return n.a.createElement("div",{className:u.a.container},n.a.createElement(c.a.span,{className:u.a.headerTitle,variant:c.a.balladBold},l.a.get(322),n.a.createElement(c.a.span,{className:u.a.betaLabel,variant:c.a.minuetBold},l.a.get(323))),n.a.createElement(c.a.p,{className:u.a.descriptionText,variant:c.a.mesto},k?n.a.createElement("span",{role:"alert"},O):S),k&&n.a.createElement(d.a,{version:"outlined",onClick:b.g},l.a.get(324)),!k&&L.map(({username:e,displayName:a,imageUrl:s,isHost:i,isCurrentUser:c})=>n.a.createElement(B,{key:e,username:e,displayName:a,imageUrl:s,isHost:i,shouldShowLeaveButton:!(!c||!y),onLeave:()=>t(Object(b.h)())})),!k&&N&&!w&&n.a.createElement(m.a,{uri:o.a.socialSessionURI(_).toURI(),holdToDisplay:0},n.a.createElement("button",{className:u.a.inviteButton,title:l.a.get(325),"aria-label":l.a.get(325)},n.a.createElement("svg",{xmlns:"http://www.w3.org/2000/svg",width:"19",height:"19",fill:"none",viewBox:"0 0 19 19"},n.a.createElement("path",{fill:"currentColor",d:"M10 9V0h-.999v9H0v1h9.001v9H10v-9h9V9h-9z"})))),n.a.createElement(c.a.p,{variant:c.a.finale,className:u.a.privacyDisclaimer},N&&!w&&n.a.createElement("span",{className:u.a.inviteMoreFriendsMessage},l.a.get(326,h-E),".")," ",l.a.get(327)))}}}]);