(window.webpackJsonp=window.webpackJsonp||[]).push([[5],{"/Oxm":function(e,a,t){e.exports={container:"_2f40b4f44aea5b1232fa60d1d4cb0632-scss",setting:"_56c20a4bc5b671401e9a5eef88d617c4-scss",textInput:"b1766062625b37fc4b79bbc4708e5978-scss",buttonDebug:"_807fc509c0a9b14381a74b0bd7e4b85c-scss"}},"476S":function(e,a,t){e.exports={container:"_2422d4e2f73ab16363d12238f327672b-scss",title:"c44337ba24f84b1168ac87bb7816a605-scss"}},"79o7":function(e,a,t){e.exports={focusOutline:"_80a24e0db2158a379fe47a6c7b7ead53-scss",dropDown:"d2f2ef5b430e433418ac057588b8e62f-scss"}},"WB/L":function(e,a,t){"use strict";t.r(a),t.d(a,"DesktopRoutes",(function(){return U}));var l=t("mXGw"),n=t.n(l),s=t("oNR1"),c=t("gN5F"),o=t("oHcp"),i=t.n(o),r=t("PXPE"),m=t("WKtE"),u=t.n(m),d=t("8Jek"),g=t.n(d);const p=({value:e,disabled:a,onSelected:t,id:l,className:s})=>n.a.createElement("label",{className:g()(u.a.wrapper,s)},n.a.createElement("input",{id:l,className:u.a.input,type:"checkbox",disabled:a,checked:e,onChange:e=>{const a=e.target.checked;t(a)}}),n.a.createElement("span",{className:u.a.indicatorWrapper},n.a.createElement("span",{className:u.a.indicator})));var b=t("79o7"),E=t.n(b);const v=({value:e,id:a,children:t,disabled:l,onSelect:s,className:c,dir:o})=>n.a.createElement("span",{className:g()(E.a.focusOutline,c)},n.a.createElement("select",{className:E.a.dropDown,value:e,id:a,disabled:l,onBlur:()=>{},onChange:e=>{s(e.target.value)},dir:o},t)),f={minimized:{label:()=>c.a.get(56)},normal:{label:()=>c.a.get(57)},off:{label:()=>c.a.get(58)}},h=navigator&&/^win/i.test(navigator.platform),k=({settings:{values:e,autoStart:a},setValue:t})=>{const[s,o]=Object(l.useState)(-1),m=-1===s?e["audio.crossfade.time_v2"]:s,u=`${Math.round(m/1e3)} ${c.a.get(59)}`;return(n.a.createElement(n.a.Fragment,null,void 0!==e["audio.crossfade_v2"]&&n.a.createElement(n.a.Fragment,null,n.a.createElement("h2",{className:i.a.title},c.a.get(60)),e["audio.crossfade_v2"]?n.a.createElement("div",{className:i.a.crossFadeContainer},n.a.createElement("label",{htmlFor:"desktop.settings.crossfadeTracks"},c.a.get(61)),n.a.createElement(r.a,{onStepBackward:()=>{o(Math.max(0,m-1e3))},onStepForward:()=>{o(Math.min(12e3,m+1e3))},max:12e3,current:m,onDragStart:e=>{o(12e3*e)},onDragMove:e=>{o(12e3*e)},onDragEnd:e=>{o(12e3*e),t("audio.crossfade.time_v2",12e3*e)}}),n.a.createElement("label",null,u)):n.a.createElement("label",{htmlFor:"desktop.settings.crossfadeTracks"},c.a.get(61)),n.a.createElement(p,{className:i.a.secondColumn,id:"desktop.settings.crossfadeTracks",value:!!e["audio.crossfade_v2"],onSelected:e=>{t("audio.crossfade_v2",e)}}),n.a.createElement("label",{htmlFor:"desktop.settings.automixInfo"},c.a.get(62)),n.a.createElement(p,{className:i.a.secondColumn,id:"desktop.settings.automixInfo",value:!!e["audio.automix"],onSelected:e=>{t("audio.automix",e)}})),void 0!==e["app.autostart-mode"]&&n.a.createElement(n.a.Fragment,null,n.a.createElement("h2",{className:i.a.title},c.a.get(63)),n.a.createElement("label",{htmlFor:"desktop.settings.autostart"},c.a.get(64)),n.a.createElement(v,{className:i.a.secondColumn,id:"desktop.settings.autostart",value:e["app.autostart-mode"],onSelect:e=>{t("app.autostart-mode",e)}},a.map(({enumKey:e,enumValue:a})=>n.a.createElement("option",{key:e,value:a},f[e]?f[e].label():""))),n.a.createElement("label",{htmlFor:"desktop.settings.closeShouldMinimize"},c.a.get(65)),n.a.createElement(p,{className:i.a.secondColumn,id:"desktop.settings.closeShouldMinimize",value:!!e["ui.minimize_to_tray"],onSelected:e=>{t("ui.minimize_to_tray",e)}})),h&&void 0!==e["ui.hardware_acceleration"]&&n.a.createElement(n.a.Fragment,null,n.a.createElement("h2",{className:i.a.title},c.a.get(66)),n.a.createElement("label",{htmlFor:"desktop.settings.enableHardwareAcceleration"},c.a.get(67)),n.a.createElement(p,{className:i.a.secondColumn,id:"desktop.settings.enableHardwareAcceleration",value:!!e["ui.hardware_acceleration"],onSelected:e=>{t("ui.hardware_acceleration",e)}})),void 0!==e["app.cookies-disabled"]&&n.a.createElement(n.a.Fragment,null,n.a.createElement("h2",{className:i.a.title},c.a.get(68)),n.a.createElement("label",{htmlFor:"desktop.settings.cookiesDisabled",dangerouslySetInnerHTML:{__html:c.a.get(69)}}),n.a.createElement(p,{className:i.a.secondColumn,id:"desktop.settings.cookiesDisabled",value:!!e["app.cookies-disabled"],onSelected:e=>{t("app.cookies-disabled",e)}}))))},N=({settings:{values:e},setValue:a})=>{const t=!!e["incognito-enabled"];return void 0!==e["publish-playlist"]&&void 0!==e["incognito-enabled"]?n.a.createElement(n.a.Fragment,null,n.a.createElement("h2",{className:i.a.title},c.a.get(52)),n.a.createElement("label",{htmlFor:"desktop.settings.newPlaylistsPublic"},c.a.get(53)),n.a.createElement(p,{className:i.a.secondColumn,id:"desktop.settings.newPlaylistsPublic",value:"1"===e["publish-playlist"],onSelected:e=>{a("publish-playlist",e?"1":"0")}}),n.a.createElement("label",{htmlFor:"desktop.settings.privateSession"},c.a.get(54)),n.a.createElement(p,{className:i.a.secondColumn,id:"desktop.settings.privateSession",value:!!e["incognito-enabled"],onSelected:e=>{a("incognito-enabled",e)}}),n.a.createElement("label",{htmlFor:"desktop.settings.publishActivity"},c.a.get(55)),n.a.createElement(p,{className:i.a.secondColumn,id:"desktop.settings.publishActivity",disabled:t,value:"1"===e["publish-activity"],onSelected:e=>{a("publish-activity",e?"1":"0")}})):null},y={automatic:{enum:0,label:()=>c.a.get(40)},low:{enum:1,label:()=>c.a.get(41)},medium:{enum:2,label:()=>c.a.get(42)},high:{enum:3,label:()=>c.a.get(43)},veryhigh:{enum:4,label:()=>c.a.get(44)}},S={loud:{label:()=>c.a.get(45)},normal:{label:()=>c.a.get(46)},quiet:{label:()=>c.a.get(47)}},_=({settings:{values:e,formats:a,loudness:t},setValue:l})=>{const s=!e["audio.normalize_v2"];return void 0!==e["audio.play_bitrate_enumeration"]?n.a.createElement(n.a.Fragment,null,n.a.createElement("h2",{className:i.a.title},c.a.get(48)),n.a.createElement("label",{htmlFor:"desktop.settings.streamingQuality"},c.a.get(49)),n.a.createElement(v,{className:i.a.secondColumn,id:"desktop.settings.streamingQuality",value:e["audio.play_bitrate_enumeration"],onSelect:e=>{const a="0"===e?y.high.enum:e;l("audio.play_bitrate_enumeration",parseInt(e,10)),l("audio.sync_bitrate_enumeration",parseInt(a,10))}},a.map(({enumKey:e,enumValue:a})=>n.a.createElement("option",{key:e,value:a},y[e]?y[e].label():""))),n.a.createElement("label",{htmlFor:"desktop.settings.normalize"},c.a.get(50)),n.a.createElement(p,{className:i.a.secondColumn,id:"desktop.settings.normalize",value:!!e["audio.normalize_v2"],onSelected:e=>{l("audio.normalize_v2",e)}}),n.a.createElement("label",{htmlFor:"desktop.settings.loudnessEnvironment"},c.a.get(51)),n.a.createElement(v,{className:i.a.secondColumn,id:"desktop.settings.loudnessEnvironment",disabled:s,value:e["audio.loudness.environment"],onSelect:e=>{l("audio.loudness.environment",parseInt(e,10))}},t.map(({enumKey:e,enumValue:a})=>n.a.createElement("option",{key:e,value:a},S[e]?S[e].label():"")))):null},C=({settings:{values:e},setValue:a})=>void 0===e["app.player.autoplay"]?null:n.a.createElement(n.a.Fragment,null,n.a.createElement("h2",{className:i.a.title},c.a.get(38)),n.a.createElement("label",{htmlFor:"desktop.settings.autoplayInfo"},c.a.get(39)),n.a.createElement(p,{className:i.a.secondColumn,id:"desktop.settings.autoplayInfo",value:!!e["app.player.autoplay"],onSelected:e=>{a("app.player.autoplay",e)}})),F=({settings:{values:e},setValue:a})=>{const t=!!e["lock-filter-explicit-content"],l="0"===e["filter-explicit-content"]||void 0===e["filter-explicit-content"];return n.a.createElement(n.a.Fragment,null,n.a.createElement("h2",{className:i.a.title},c.a.get(35)),n.a.createElement("label",{htmlFor:"desktop.settings.explicitContentFilter"},t?c.a.get(36):c.a.get(37)),n.a.createElement(p,{className:i.a.secondColumn,id:"desktop.settings.explicitContentFilter",disabled:t,value:l,onSelected:e=>{a("filter-explicit-content",e?"0":"1")}}))};var O=t("34YF"),w=t("/m4v"),x=t("HRw2");const A=({settings:{values:e,languages:a},setValue:t})=>{const l=e.language,s=Object(w.c)();return void 0===e.language?null:n.a.createElement(n.a.Fragment,null,n.a.createElement("h2",{className:i.a.title},c.a.get(32)),n.a.createElement("div",null,n.a.createElement("label",{htmlFor:"desktop.settings.selectLanguage"},c.a.get(33)),navigator.language!==l&&n.a.createElement(O.a,{className:i.a.restartAppButton,version:"outlined",onClick:()=>{s(Object(x.f)())}},c.a.get(34))),n.a.createElement(v,{className:i.a.secondColumn,dir:"auto",value:e.language,id:"desktop.settings.selectLanguage",onSelect:e=>{t("language",e)}},a.map(({key:e,value:a})=>n.a.createElement("option",{key:e,value:e},a))))};var D=t("odWe");const V=({settings:{values:e},setValue:a})=>{const t=void 0===e.catalogue||"free"===e.catalogue.toLowerCase();return(n.a.createElement(n.a.Fragment,null,n.a.createElement("h2",{className:i.a.title},c.a.get(28)),!t&&n.a.createElement(n.a.Fragment,null,n.a.createElement("label",{htmlFor:"settings.showMusicAnnouncements"},c.a.get(29)),n.a.createElement(p,{className:i.a.secondColumn,id:"settings.showMusicAnnouncements",value:!e["ui.hide_hpto"],onSelected:e=>{a("ui.hide_hpto",!e)}})),n.a.createElement("label",{htmlFor:"settings.trackNotifications"},c.a.get(30)),n.a.createElement(p,{className:i.a.secondColumn,id:"settings.trackNotifications",value:!!e["ui.track_notifications_enabled"],onSelected:e=>{a("ui.track_notifications_enabled",e)}}),n.a.createElement("label",{htmlFor:"settings.showFriendActivity"},c.a.get(31)),n.a.createElement(p,{className:i.a.secondColumn,id:"settings.showFriendActivity",value:!!e["ui.show_friend_feed"],onSelected:e=>{a("ui.show_friend_feed",e)}})))};var R=t("KKaQ");const B=({settings:{values:e},setValue:a})=>void 0===e.employee||"1"!==e.employee.toLowerCase()?null:n.a.createElement(n.a.Fragment,null,n.a.createElement("h2",{className:i.a.title},c.a.get(26)),n.a.createElement("label",{htmlFor:"settings.revertClassic",dangerouslySetInnerHTML:{__html:c.a.get(27,"https://forms.gle/9RUxsu79ezftXdkW6")}}),n.a.createElement(p,{className:i.a.secondColumn,id:"settings.revertClassic",value:"classic"===e["ui.experience_override"],onSelected:e=>{a("ui.experience_override",e?"classic":"xpui"),window.location.assign(e?"spotify:app:zlink":"spotify:app:xpui")}})),T=()=>{const{settings:e,setValue:a}=Object(R.a)(),[t,s]=Object(l.useState)(!1),o=Object(w.c)(),r=Object(l.useCallback)(()=>s(!t),[t,s]);return Object(l.useEffect)(()=>{o(Object(D.P)())},[o]),n.a.createElement("div",{className:i.a.container},n.a.createElement("h1",{className:i.a.header},c.a.get(23)),n.a.createElement(A,{settings:e,setValue:a}),n.a.createElement(F,{settings:e,setValue:a}),n.a.createElement(C,{settings:e,setValue:a}),n.a.createElement(_,{settings:e,setValue:a}),n.a.createElement(V,{settings:e,setValue:a}),n.a.createElement(N,{settings:e,setValue:a}),n.a.createElement(B,{settings:e,setValue:a}),n.a.createElement("span",{className:i.a.button},n.a.createElement(O.a,{version:"outlined",onClick:r},t?c.a.get(24):c.a.get(25))),t&&n.a.createElement(k,{settings:e,setValue:a}))};var j=t("476S"),L=t.n(j),M=t("hPDf"),P=t("/BVi");const I=Object(P.a)();window.abba={get:async function(e,a){const t=await I.get("sp://product-state/v1/values");let l={},n="";if(t.abbaOverrides?n=t.abbaOverrides:t.abbaoverrides&&(n=t.abbaoverrides),n)try{l=JSON.parse(n)}catch(e){}Object.prototype.hasOwnProperty.call(l,e)?setTimeout(()=>a(null,l[e]),0):I.post("sp://abba/v1/flags",{flags:[e]}).then(t=>{const{flags:l=[]}=t,n=l[0]&&l[0].featureName===e&&l[0].cell;a(null,n||null)}).catch(e=>{a(e)})},getAll:function(e){I.get("sp://abba/v1/all_flags").then(a=>{const{flags:t=[]}=a,l=t.reduce((e,a)=>(e[a.featureName]=a.cell,e),{});e(null,JSON.stringify(l,null,2))}).catch(a=>{e(a)})},getRequestedFlagNames:function(e){I.get("sp://abba/v1/requested_flag_names").then(a=>{e(null,JSON.stringify(a.sort(),null,2))}).catch(a=>{e(a)})}};var z=t("/Oxm"),H=t.n(z);const K=()=>{const[e,a]=Object(l.useState)(60),[t,s]=Object(l.useState)("stream"),[c,o]=Object(l.useState)("");return n.a.createElement("div",{className:H.a.container},n.a.createElement("h2",null,"Ad Debug"),n.a.createElement("div",{className:H.a.setting},n.a.createElement("p",null,"Stream time (in seconds)"),n.a.createElement("input",{className:H.a.textInput,type:"text",value:e,onChange:e=>{const t=e.target.value;a(t)}}),n.a.createElement("button",{className:H.a.buttonDebug,onClick:()=>{M.a.increaseStreamTime(e)}},"Add time"),n.a.createElement("button",{className:H.a.buttonDebug,onClick:()=>{M.a.increaseStreamTime(1200)}},"Add 20 minutes")),n.a.createElement("div",{className:H.a.setting},n.a.createElement("p",null,"Override Country"),n.a.createElement("select",{value:c,onBlur:()=>{},onChange:e=>{o(e.target.value)}},n.a.createElement("option",{value:"US"},"USA"),n.a.createElement("option",{value:"UK"},"United Kingdom"),n.a.createElement("option",{value:"JP"},"Japan"),n.a.createElement("option",{value:"BR"},"Brasil"),n.a.createElement("option",{value:"AU"},"Australia"),n.a.createElement("option",{value:"SE"},"Sweden"),n.a.createElement("option",{value:""},"Clear Override")),n.a.createElement("button",{className:H.a.buttonDebug,onClick:()=>{M.a.overrideCountry(c)}},"Override")),n.a.createElement("div",{className:H.a.setting},n.a.createElement("p",null,"Clear ad in slot"),n.a.createElement("select",{value:t,onBlur:()=>{},onChange:e=>{s(e.target.value)}},n.a.createElement("option",{value:"stream"},"STREAM"),n.a.createElement("option",{value:"billboard"},"BILLBOARD OVERLAY"),n.a.createElement("option",{value:"promotedsong"},"PROMOTED SONG"),n.a.createElement("option",{value:"hpto"},"HPTO"),n.a.createElement("option",{value:"leaderboard"},"LEADERBOARD")),n.a.createElement("button",{className:H.a.buttonDebug,onClick:()=>{M.a.clearSlot(t)}},"Clear slot"),n.a.createElement("p",null,"Trigger ad in slot"),n.a.createElement("select",{value:t,onBlur:()=>{},onChange:e=>{s(e.target.value)}},n.a.createElement("option",{value:"stream"},"STREAM"),n.a.createElement("option",{value:"billboard"},"BILLBOARD OVERLAY"),n.a.createElement("option",{value:"promotedsong"},"PROMOTED SONG"),n.a.createElement("option",{value:"hpto"},"HPTO"),n.a.createElement("option",{value:"leaderboard"},"LEADERBOARD")),n.a.createElement("button",{className:H.a.buttonDebug,onClick:()=>{M.a.triggerSlot(t)}},"Trigger slot")),n.a.createElement("button",{className:H.a.buttonDebug,onClick:()=>{M.a.queueVideoAd()}},"Queue Video Ad"))},J=()=>{const{settings:e}=Object(R.a)();return e.values["app.enable-developer-mode"]?n.a.createElement("div",{className:L.a.container},n.a.createElement("h1",{className:L.a.title},"Debug Utils"),n.a.createElement(K,null)):null},U=()=>n.a.createElement(n.a.Fragment,null,n.a.createElement(s.b,{key:"preferences",exact:!0,path:"/preferences",component:T}),n.a.createElement(s.b,{key:"diag",exact:!0,path:"/diag",component:J}))},WKtE:function(e,a,t){e.exports={wrapper:"d9a8c9325257b1c3dd81ca2dd7fc0570-scss",indicatorWrapper:"_53c9542dc7983daf21f1f90be4635718-scss",input:"dcf606d1764d3eb82a710737f20e1820-scss",indicator:"dcc5317884c0e50ddce8c1dd07526fae-scss"}},oHcp:function(e,a,t){e.exports={container:"a9d3e0150298a368f55eebc5a6c040ea-scss",header:"efc952ff2ab6f94d45d101cbe3a09a79-scss",secondColumn:"f06c9ade5b527646951ac06cb01d6b4e-scss",title:"e7dc06556e74a9fa75cd8e739a46290a-scss",button:"_2fa535455976c8fad3837c62b2d97646-scss",crossFadeContainer:"_7db858af6a9b50932daf4bf7192e09bc-scss",restartAppButton:"_0b17c21cea0f8a5f586974279a6fb76a-scss"}}}]);