port: 7890
socks-port: 7891
redir-port: 7892
allow-lan: false
mode: Rule
log-level: info
external-controller: '0.0.0.0:9090'
secret: ''
Proxy:
{foreach $confs as $conf}
  - {$conf|json_encode}
{/foreach}

'Proxy Group':
    - { name: "{config::get("appName")}", type: select, proxies: {$proxies|json_encode} }

Rule:
# Apple 服务优化
## 其他服务
- DOMAIN,gs.apple.com,{config::get("appName")}
- DOMAIN-SUFFIX,mzstatic.com,DIRECT
- DOMAIN-SUFFIX,akadns.net,DIRECT
- DOMAIN-SUFFIX,aaplimg.com,DIRECT
- DOMAIN-SUFFIX,cdn-apple.com,DIRECT

## 通用部分
- DOMAIN,itunes.apple.com,{config::get("appName")}
- DOMAIN,beta.itunes.apple.com,{config::get("appName")}
- DOMAIN-SUFFIX,apple.com,DIRECT
- DOMAIN-SUFFIX,icloud.com,DIRECT
- DOMAIN-SUFFIX,icloud-content.com,DIRECT
- DOMAIN,e.crashlytics.com,REJECT



## Bilibili
- DOMAIN-KEYWORD,bilibili,{config::get("appName")}
- DOMAIN-SUFFIX,acgvideo.com,{config::get("appName")}
- DOMAIN-SUFFIX,hdslb.com,{config::get("appName")}

## IQIYI
- DOMAIN-KEYWORD,qiyi,{config::get("appName")}
- DOMAIN-SUFFIX,qy.net,{config::get("appName")}
- IP-CIDR,101.227.0.0/16,{config::get("appName")},no-resolve
- IP-CIDR,101.224.0.0/13,{config::get("appName")},no-resolve
- IP-CIDR,119.176.0.0/12,{config::get("appName")},no-resolve

## letv
- DOMAIN-SUFFIX,api.mob.app.letv.com,{config::get("appName")}

## MytvSUPER
- DOMAIN-KEYWORD,nowtv100,{config::get("appName")}
- DOMAIN-KEYWORD,rthklive,{config::get("appName")}
- DOMAIN-SUFFIX,mytvsuper.com,{config::get("appName")}
- DOMAIN-SUFFIX,tvb.com,{config::get("appName")}

## NeteaseMusic
- DOMAIN-SUFFIX,music.126.net,{config::get("appName")}
- DOMAIN-SUFFIX,music.163.com,{config::get("appName")}

## Tencent Video
- DOMAIN-SUFFIX,vv.video.qq.com,{config::get("appName")}

## Youku
- IP-CIDR,106.11.0.0/16,{config::get("appName")},no-resolve



## ABC
- DOMAIN-SUFFIX,edgedatg.com,{config::get("appName")}
- DOMAIN-SUFFIX,go.com,{config::get("appName")}

## AbemaTV
- DOMAIN,linear-abematv.akamaized.net,{config::get("appName")}
- DOMAIN-SUFFIX,abema.io,{config::get("appName")}
- DOMAIN-SUFFIX,abema.tv,{config::get("appName")}
- DOMAIN-SUFFIX,akamaized.net,{config::get("appName")}
- DOMAIN-SUFFIX,ameba.jp,{config::get("appName")}
- DOMAIN-SUFFIX,hayabusa.io,{config::get("appName")}

## Amazon
- DOMAIN-SUFFIX,amazonaws.com,{config::get("appName")}

## Bahamut
- DOMAIN-SUFFIX,bahamut.com.tw,{config::get("appName")}
- DOMAIN-SUFFIX,gamer.com.tw,{config::get("appName")}
- DOMAIN-SUFFIX,hinet.net,{config::get("appName")}

## BBC
- DOMAIN-KEYWORD,bbcfmt,{config::get("appName")}
- DOMAIN-KEYWORD,co.uk,{config::get("appName")}
- DOMAIN-KEYWORD,uk-live,{config::get("appName")}
- DOMAIN-SUFFIX,bbc.co,{config::get("appName")}
- DOMAIN-SUFFIX,bbc.co.uk,{config::get("appName")}
- DOMAIN-SUFFIX,bbc.com,{config::get("appName")}
- DOMAIN-SUFFIX,bbci.co,{config::get("appName")}
- DOMAIN-SUFFIX,bbci.co.uk,{config::get("appName")}

## CHOCO TV
- DOMAIN-SUFFIX,chocotv.com.tw,{config::get("appName")}

## Epicgames
- DOMAIN-KEYWORD,epicgames,{config::get("appName")}
- DOMAIN-SUFFIX,helpshift.com,{config::get("appName")}

## Fox+
- DOMAIN-KEYWORD,foxplus,{config::get("appName")}
- DOMAIN-SUFFIX,config.fox.com,{config::get("appName")}
- DOMAIN-SUFFIX,emome.net,{config::get("appName")}
- DOMAIN-SUFFIX,fox.com,{config::get("appName")}
- DOMAIN-SUFFIX,foxdcg.com,{config::get("appName")}
- DOMAIN-SUFFIX,foxnow.com,{config::get("appName")}
- DOMAIN-SUFFIX,foxplus.com,{config::get("appName")}
- DOMAIN-SUFFIX,foxplay.com,{config::get("appName")}
- DOMAIN-SUFFIX,ipinfo.io,{config::get("appName")}
- DOMAIN-SUFFIX,mstage.io,{config::get("appName")}
- DOMAIN-SUFFIX,now.com,{config::get("appName")}
- DOMAIN-SUFFIX,theplatform.com,{config::get("appName")}

## HBO
- DOMAIN-SUFFIX,hbo.com,{config::get("appName")}
- DOMAIN-SUFFIX,hbogo.com,{config::get("appName")}

## HBO Go
- DOMAIN-SUFFIX,hbogoasia.hk,{config::get("appName")}

## Hulu
- DOMAIN-SUFFIX,happyon.jp,{config::get("appName")}
- DOMAIN-SUFFIX,hulu.com,{config::get("appName")}
- DOMAIN-SUFFIX,huluim.com,{config::get("appName")}

## Imkan
- DOMAIN-SUFFIX,imkan.tv,{config::get("appName")}

## JOOX
- DOMAIN-SUFFIX,joox.com,{config::get("appName")}

## Netflix
- DOMAIN-SUFFIX,netflix.com,{config::get("appName")}
- DOMAIN-SUFFIX,netflix.net,{config::get("appName")}
- DOMAIN-SUFFIX,nflxext.com,{config::get("appName")}
- DOMAIN-SUFFIX,nflximg.com,{config::get("appName")}
- DOMAIN-SUFFIX,nflximg.net,{config::get("appName")}
- DOMAIN-SUFFIX,nflxso.net,{config::get("appName")}
- DOMAIN-SUFFIX,nflxvideo.net,{config::get("appName")}

## Spotify
- DOMAIN-KEYWORD,spotify,{config::get("appName")}
- DOMAIN-SUFFIX,scdn.co,{config::get("appName")}
- DOMAIN-SUFFIX,spoti.fi,{config::get("appName")}

## viuTV
- DOMAIN-SUFFIX,viu.tv,{config::get("appName")}

## Youtube
- DOMAIN-KEYWORD,youtube,{config::get("appName")}
- DOMAIN-SUFFIX,googlevideo.com,{config::get("appName")}
- DOMAIN-SUFFIX,gvt2.com,{config::get("appName")}
- DOMAIN-SUFFIX,youtu.be,{config::get("appName")}


# 国内网站
- DOMAIN-SUFFIX,cn,DIRECT
- DOMAIN-KEYWORD,-cn,DIRECT

- DOMAIN-SUFFIX,126.com,DIRECT
- DOMAIN-SUFFIX,126.net,DIRECT
- DOMAIN-SUFFIX,127.net,DIRECT
- DOMAIN-SUFFIX,163.com,DIRECT
- DOMAIN-SUFFIX,360buyimg.com,DIRECT
- DOMAIN-SUFFIX,36kr.com,DIRECT
- DOMAIN-SUFFIX,acfun.tv,DIRECT
- DOMAIN-SUFFIX,air-matters.com,DIRECT
- DOMAIN-SUFFIX,aixifan.com,DIRECT
- DOMAIN-SUFFIX,akamaized.net,DIRECT
- DOMAIN-KEYWORD,alicdn,DIRECT
- DOMAIN-KEYWORD,alipay,DIRECT
- DOMAIN-KEYWORD,taobao,DIRECT
- DOMAIN-SUFFIX,amap.com,DIRECT
- DOMAIN-SUFFIX,autonavi.com,DIRECT
- DOMAIN-KEYWORD,baidu,DIRECT
- DOMAIN-SUFFIX,bdimg.com,DIRECT
- DOMAIN-SUFFIX,bdstatic.com,DIRECT
- DOMAIN-SUFFIX,bilibili.com,DIRECT
- DOMAIN-SUFFIX,caiyunapp.com,DIRECT
- DOMAIN-SUFFIX,clouddn.com,DIRECT
- DOMAIN-SUFFIX,cnbeta.com,DIRECT
- DOMAIN-SUFFIX,cnbetacdn.com,DIRECT
- DOMAIN-SUFFIX,cootekservice.com,DIRECT
- DOMAIN-SUFFIX,csdn.net,DIRECT
- DOMAIN-SUFFIX,ctrip.com,DIRECT
- DOMAIN-SUFFIX,dgtle.com,DIRECT
- DOMAIN-SUFFIX,dianping.com,DIRECT
- DOMAIN-SUFFIX,douban.com,DIRECT
- DOMAIN-SUFFIX,doubanio.com,DIRECT
- DOMAIN-SUFFIX,duokan.com,DIRECT
- DOMAIN-SUFFIX,easou.com,DIRECT
- DOMAIN-SUFFIX,ele.me,DIRECT
- DOMAIN-SUFFIX,feng.com,DIRECT
- DOMAIN-SUFFIX,fir.im,DIRECT
- DOMAIN-SUFFIX,frdic.com,DIRECT
- DOMAIN-SUFFIX,g-cores.com,DIRECT
- DOMAIN-SUFFIX,godic.net,DIRECT
- DOMAIN-SUFFIX,gtimg.com,DIRECT
- DOMAIN,cdn.hockeyapp.net,DIRECT
- DOMAIN-SUFFIX,hongxiu.com,DIRECT
- DOMAIN-SUFFIX,hxcdn.net,DIRECT
- DOMAIN-SUFFIX,iciba.com,DIRECT
- DOMAIN-SUFFIX,ifeng.com,DIRECT
- DOMAIN-SUFFIX,ifengimg.com,DIRECT
- DOMAIN-SUFFIX,ipip.net,DIRECT
- DOMAIN-SUFFIX,iqiyi.com,DIRECT
- DOMAIN-SUFFIX,jd.com,DIRECT
- DOMAIN-SUFFIX,jianshu.com,DIRECT
- DOMAIN-SUFFIX,knewone.com,DIRECT
- DOMAIN-SUFFIX,le.com,DIRECT
- DOMAIN-SUFFIX,lecloud.com,DIRECT
- DOMAIN-SUFFIX,lemicp.com,DIRECT
- DOMAIN-SUFFIX,luoo.net,DIRECT
- DOMAIN-SUFFIX,meituan.com,DIRECT
- DOMAIN-SUFFIX,meituan.net,DIRECT
- DOMAIN-SUFFIX,mi.com,DIRECT
- DOMAIN-SUFFIX,miaopai.com,DIRECT
- DOMAIN-SUFFIX,microsoft.com,DIRECT
- DOMAIN-SUFFIX,microsoftonline.com,DIRECT
- DOMAIN-SUFFIX,miui.com,DIRECT
- DOMAIN-SUFFIX,miwifi.com,DIRECT
- DOMAIN-SUFFIX,mob.com,DIRECT
- DOMAIN-SUFFIX,netease.com,DIRECT
- DOMAIN-KEYWORD,officecdn,DIRECT
- DOMAIN-SUFFIX,oschina.net,DIRECT
- DOMAIN-SUFFIX,ppsimg.com,DIRECT
- DOMAIN-SUFFIX,pstatp.com,DIRECT
- DOMAIN-SUFFIX,qcloud.com,DIRECT
- DOMAIN-SUFFIX,qdaily.com,DIRECT
- DOMAIN-SUFFIX,qdmm.com,DIRECT
- DOMAIN-SUFFIX,qhimg.com,DIRECT
- DOMAIN-SUFFIX,qidian.com,DIRECT
- DOMAIN-SUFFIX,qihucdn.com,DIRECT
- DOMAIN-SUFFIX,qiniu.com,DIRECT
- DOMAIN-SUFFIX,qiniucdn.com,DIRECT
- DOMAIN-SUFFIX,qiyipic.com,DIRECT
- DOMAIN-SUFFIX,qq.com,DIRECT
- DOMAIN-SUFFIX,qqurl.com,DIRECT
- DOMAIN-SUFFIX,rarbg.to,DIRECT
- DOMAIN-SUFFIX,rr.tv,DIRECT
- DOMAIN-SUFFIX,ruguoapp.com,DIRECT
- DOMAIN-SUFFIX,segmentfault.com,DIRECT
- DOMAIN-SUFFIX,sinaapp.com,DIRECT
- DOMAIN-SUFFIX,sogou.com,DIRECT
- DOMAIN-SUFFIX,sogoucdn.com,DIRECT
- DOMAIN-SUFFIX,sohu.com,DIRECT
- DOMAIN-SUFFIX,soku.com,DIRECT
- DOMAIN-SUFFIX,speedtest.net,DIRECT
- DOMAIN-SUFFIX,sspai.com,DIRECT
- DOMAIN-SUFFIX,suning.com,DIRECT
- DOMAIN-SUFFIX,taobao.com,DIRECT
- DOMAIN-SUFFIX,tenpay.com,DIRECT
- DOMAIN-SUFFIX,tmall.com,DIRECT
- DOMAIN-SUFFIX,tudou.com,DIRECT
- DOMAIN-SUFFIX,umetrip.com,DIRECT
- DOMAIN-SUFFIX,upaiyun.com,DIRECT
- DOMAIN-SUFFIX,upyun.com,DIRECT
- DOMAIN-SUFFIX,v2ex.com,DIRECT
- DOMAIN-SUFFIX,veryzhun.com,DIRECT
- DOMAIN-SUFFIX,weather.com,DIRECT
- DOMAIN-SUFFIX,weibo.com,DIRECT
- DOMAIN-SUFFIX,xiami.com,DIRECT
- DOMAIN-SUFFIX,xiami.net,DIRECT
- DOMAIN-SUFFIX,xiaomicp.com,DIRECT
- DOMAIN-SUFFIX,ximalaya.com,DIRECT
- DOMAIN-SUFFIX,xmcdn.com,DIRECT
- DOMAIN-SUFFIX,xunlei.com,DIRECT
- DOMAIN-SUFFIX,yhd.com,DIRECT
- DOMAIN-SUFFIX,yihaodianimg.com,DIRECT
- DOMAIN-SUFFIX,yinxiang.com,DIRECT
- DOMAIN-SUFFIX,ykimg.com,DIRECT
- DOMAIN-SUFFIX,youdao.com,DIRECT
- DOMAIN-SUFFIX,youku.com,DIRECT
- DOMAIN-SUFFIX,zealer.com,DIRECT
- DOMAIN-SUFFIX,zhihu.com,DIRECT
- DOMAIN-SUFFIX,zhimg.com,DIRECT

# 抗 DNS 污染
- DOMAIN-KEYWORD,amazon,{config::get("appName")}
- DOMAIN-KEYWORD,google,{config::get("appName")}
- DOMAIN-KEYWORD,gmail,{config::get("appName")}
- DOMAIN-KEYWORD,youtube,{config::get("appName")}
- DOMAIN-KEYWORD,facebook,{config::get("appName")}
- DOMAIN-SUFFIX,fb.me,{config::get("appName")}
- DOMAIN-SUFFIX,fbcdn.net,{config::get("appName")}
- DOMAIN-KEYWORD,twitter,{config::get("appName")}
- DOMAIN-KEYWORD,instagram,{config::get("appName")}
- DOMAIN-KEYWORD,dropbox,{config::get("appName")}
- DOMAIN-SUFFIX,twimg.com,{config::get("appName")}
- DOMAIN-KEYWORD,blogspot,{config::get("appName")}
- DOMAIN-SUFFIX,youtu.be,{config::get("appName")}
- DOMAIN-KEYWORD,whatsapp,{config::get("appName")}

# 常见广告域名屏蔽
- DOMAIN-KEYWORD,admarvel,REJECT
- DOMAIN-KEYWORD,admaster,REJECT
- DOMAIN-KEYWORD,adsage,REJECT
- DOMAIN-KEYWORD,adsmogo,REJECT
- DOMAIN-KEYWORD,adsrvmedia,REJECT
- DOMAIN-KEYWORD,adwords,REJECT
- DOMAIN-KEYWORD,adservice,REJECT
- DOMAIN-KEYWORD,domob,REJECT
- DOMAIN-KEYWORD,duomeng,REJECT
- DOMAIN-KEYWORD,dwtrack,REJECT
- DOMAIN-KEYWORD,guanggao,REJECT
- DOMAIN-KEYWORD,lianmeng,REJECT
- DOMAIN-KEYWORD,omgmta,REJECT
- DOMAIN-KEYWORD,openx,REJECT
- DOMAIN-KEYWORD,partnerad,REJECT
- DOMAIN-KEYWORD,pingfore,REJECT
- DOMAIN-KEYWORD,supersonicads,REJECT
- DOMAIN-KEYWORD,tracking,REJECT
- DOMAIN-KEYWORD,uedas,REJECT
- DOMAIN-KEYWORD,umeng,REJECT
- DOMAIN-KEYWORD,usage,REJECT
- DOMAIN-KEYWORD,wlmonitor,REJECT
- DOMAIN-KEYWORD,zjtoolbar,REJECT

# 国外网站
- DOMAIN-SUFFIX,9to5mac.com,{config::get("appName")}
- DOMAIN-SUFFIX,abpchina.org,{config::get("appName")}
- DOMAIN-SUFFIX,adblockplus.org,{config::get("appName")}
- DOMAIN-SUFFIX,adobe.com,{config::get("appName")}
- DOMAIN-SUFFIX,alfredapp.com,{config::get("appName")}
- DOMAIN-SUFFIX,amplitude.com,{config::get("appName")}
- DOMAIN-SUFFIX,ampproject.org,{config::get("appName")}
- DOMAIN-SUFFIX,android.com,{config::get("appName")}
- DOMAIN-SUFFIX,angularjs.org,{config::get("appName")}
- DOMAIN-SUFFIX,aolcdn.com,{config::get("appName")}
- DOMAIN-SUFFIX,apkpure.com,{config::get("appName")}
- DOMAIN-SUFFIX,appledaily.com,{config::get("appName")}
- DOMAIN-SUFFIX,appshopper.com,{config::get("appName")}
- DOMAIN-SUFFIX,appspot.com,{config::get("appName")}
- DOMAIN-SUFFIX,arcgis.com,{config::get("appName")}
- DOMAIN-SUFFIX,archive.org,{config::get("appName")}
- DOMAIN-SUFFIX,armorgames.com,{config::get("appName")}
- DOMAIN-SUFFIX,aspnetcdn.com,{config::get("appName")}
- DOMAIN-SUFFIX,att.com,{config::get("appName")}
- DOMAIN-SUFFIX,awsstatic.com,{config::get("appName")}
- DOMAIN-SUFFIX,azureedge.net,{config::get("appName")}
- DOMAIN-SUFFIX,azurewebsites.net,{config::get("appName")}
- DOMAIN-SUFFIX,bing.com,{config::get("appName")}
- DOMAIN-SUFFIX,bintray.com,{config::get("appName")}
- DOMAIN-SUFFIX,bit.com,{config::get("appName")}
- DOMAIN-SUFFIX,bit.ly,{config::get("appName")}
- DOMAIN-SUFFIX,bitbucket.org,{config::get("appName")}
- DOMAIN-SUFFIX,bjango.com,{config::get("appName")}
- DOMAIN-SUFFIX,bkrtx.com,{config::get("appName")}
- DOMAIN-SUFFIX,blog.com,{config::get("appName")}
- DOMAIN-SUFFIX,blogcdn.com,{config::get("appName")}
- DOMAIN-SUFFIX,blogger.com,{config::get("appName")}
- DOMAIN-SUFFIX,blogsmithmedia.com,{config::get("appName")}
- DOMAIN-SUFFIX,blogspot.com,{config::get("appName")}
- DOMAIN-SUFFIX,blogspot.hk,{config::get("appName")}
- DOMAIN-SUFFIX,bloomberg.com,{config::get("appName")}
- DOMAIN-SUFFIX,box.com,{config::get("appName")}
- DOMAIN-SUFFIX,box.net,{config::get("appName")}
- DOMAIN-SUFFIX,cachefly.net,{config::get("appName")}
- DOMAIN-SUFFIX,chromium.org,{config::get("appName")}
- DOMAIN-SUFFIX,cl.ly,{config::get("appName")}
- DOMAIN-SUFFIX,cloudflare.com,{config::get("appName")}
- DOMAIN-SUFFIX,cloudfront.net,{config::get("appName")}
- DOMAIN-SUFFIX,cloudmagic.com,{config::get("appName")}
- DOMAIN-SUFFIX,cmail19.com,{config::get("appName")}
- DOMAIN-SUFFIX,cnet.com,{config::get("appName")}
- DOMAIN-SUFFIX,cocoapods.org,{config::get("appName")}
- DOMAIN-SUFFIX,comodoca.com,{config::get("appName")}
- DOMAIN-SUFFIX,content.office.net,{config::get("appName")}
- DOMAIN-SUFFIX,crashlytics.com,{config::get("appName")}
- DOMAIN-SUFFIX,culturedcode.com,{config::get("appName")}
- DOMAIN-SUFFIX,d.pr,{config::get("appName")}
- DOMAIN-SUFFIX,danilo.to,{config::get("appName")}
- DOMAIN-SUFFIX,dayone.me,{config::get("appName")}
- DOMAIN-SUFFIX,db.tt,{config::get("appName")}
- DOMAIN-SUFFIX,deskconnect.com,{config::get("appName")}
- DOMAIN-SUFFIX,digicert.com,{config::get("appName")}
- DOMAIN-SUFFIX,disq.us,{config::get("appName")}
- DOMAIN-SUFFIX,disqus.com,{config::get("appName")}
- DOMAIN-SUFFIX,disquscdn.com,{config::get("appName")}
- DOMAIN-SUFFIX,dnsimple.com,{config::get("appName")}
- DOMAIN-SUFFIX,docker.com,{config::get("appName")}
- DOMAIN-SUFFIX,dribbble.com,{config::get("appName")}
- DOMAIN-SUFFIX,droplr.com,{config::get("appName")}
- DOMAIN-SUFFIX,duckduckgo.com,{config::get("appName")}
- DOMAIN-SUFFIX,dueapp.com,{config::get("appName")}
- DOMAIN-SUFFIX,dytt8.net,{config::get("appName")}
- DOMAIN-SUFFIX,edgecastcdn.net,{config::get("appName")}
- DOMAIN-SUFFIX,edgekey.net,{config::get("appName")}
- DOMAIN-SUFFIX,edgesuite.net,{config::get("appName")}
- DOMAIN-SUFFIX,engadget.com,{config::get("appName")}
- DOMAIN-SUFFIX,entrust.net,{config::get("appName")}
- DOMAIN-SUFFIX,eurekavpt.com,{config::get("appName")}
- DOMAIN-SUFFIX,evernote.com,{config::get("appName")}
- DOMAIN-SUFFIX,fabric.io,{config::get("appName")}
- DOMAIN-SUFFIX,fast.com,{config::get("appName")}
- DOMAIN-SUFFIX,fastly.net,{config::get("appName")}
- DOMAIN-SUFFIX,fc2.com,{config::get("appName")}
- DOMAIN-SUFFIX,feedburner.com,{config::get("appName")}
- DOMAIN-SUFFIX,feedly.com,{config::get("appName")}
- DOMAIN-SUFFIX,feedsportal.com,{config::get("appName")}
- DOMAIN-SUFFIX,fiftythree.com,{config::get("appName")}
- DOMAIN-SUFFIX,firebaseio.com,{config::get("appName")}
- DOMAIN-SUFFIX,flexibits.com,{config::get("appName")}
- DOMAIN-SUFFIX,flickr.com,{config::get("appName")}
- DOMAIN-SUFFIX,flipboard.com,{config::get("appName")}
- DOMAIN-SUFFIX,g.co,{config::get("appName")}
- DOMAIN-SUFFIX,gabia.net,{config::get("appName")}
- DOMAIN-SUFFIX,geni.us,{config::get("appName")}
- DOMAIN-SUFFIX,gfx.ms,{config::get("appName")}
- DOMAIN-SUFFIX,ggpht.com,{config::get("appName")}
- DOMAIN-SUFFIX,ghostnoteapp.com,{config::get("appName")}
- DOMAIN-SUFFIX,git.io,{config::get("appName")}
- DOMAIN-KEYWORD,github,{config::get("appName")}
- DOMAIN-SUFFIX,globalsign.com,{config::get("appName")}
- DOMAIN-SUFFIX,gmodules.com,{config::get("appName")}
- DOMAIN-SUFFIX,godaddy.com,{config::get("appName")}
- DOMAIN-SUFFIX,golang.org,{config::get("appName")}
- DOMAIN-SUFFIX,gongm.in,{config::get("appName")}
- DOMAIN-SUFFIX,goo.gl,{config::get("appName")}
- DOMAIN-SUFFIX,goodreaders.com,{config::get("appName")}
- DOMAIN-SUFFIX,goodreads.com,{config::get("appName")}
- DOMAIN-SUFFIX,gravatar.com,{config::get("appName")}
- DOMAIN-SUFFIX,gstatic.com,{config::get("appName")}
- DOMAIN-SUFFIX,gvt0.com,{config::get("appName")}
- DOMAIN-SUFFIX,hockeyapp.net,{config::get("appName")}
- DOMAIN-SUFFIX,hotmail.com,{config::get("appName")}
- DOMAIN-SUFFIX,icons8.com,{config::get("appName")}
- DOMAIN-SUFFIX,ift.tt,{config::get("appName")}
- DOMAIN-SUFFIX,ifttt.com,{config::get("appName")}
- DOMAIN-SUFFIX,iherb.com,{config::get("appName")}
- DOMAIN-SUFFIX,imageshack.us,{config::get("appName")}
- DOMAIN-SUFFIX,img.ly,{config::get("appName")}
- DOMAIN-SUFFIX,imgur.com,{config::get("appName")}
- DOMAIN-SUFFIX,imore.com,{config::get("appName")}
- DOMAIN-SUFFIX,instapaper.com,{config::get("appName")}
- DOMAIN-SUFFIX,ipn.li,{config::get("appName")}
- DOMAIN-SUFFIX,is.gd,{config::get("appName")}
- DOMAIN-SUFFIX,issuu.com,{config::get("appName")}
- DOMAIN-SUFFIX,itgonglun.com,{config::get("appName")}
- DOMAIN-SUFFIX,itun.es,{config::get("appName")}
- DOMAIN-SUFFIX,ixquick.com,{config::get("appName")}
- DOMAIN-SUFFIX,j.mp,{config::get("appName")}
- DOMAIN-SUFFIX,js.revsci.net,{config::get("appName")}
- DOMAIN-SUFFIX,jshint.com,{config::get("appName")}
- DOMAIN-SUFFIX,jtvnw.net,{config::get("appName")}
- DOMAIN-SUFFIX,justgetflux.com,{config::get("appName")}
- DOMAIN-SUFFIX,kat.cr,{config::get("appName")}
- DOMAIN-SUFFIX,klip.me,{config::get("appName")}
- DOMAIN-SUFFIX,libsyn.com,{config::get("appName")}
- DOMAIN-SUFFIX,licdn.com,{config::get("appName")}
- DOMAIN-SUFFIX,linkedin.com,{config::get("appName")}
- DOMAIN-SUFFIX,linode.com,{config::get("appName")}
- DOMAIN-SUFFIX,lithium.com,{config::get("appName")}
- DOMAIN-SUFFIX,littlehj.com,{config::get("appName")}
- DOMAIN-SUFFIX,live.com,{config::get("appName")}
- DOMAIN-SUFFIX,live.net,{config::get("appName")}
- DOMAIN-SUFFIX,livefilestore.com,{config::get("appName")}
- DOMAIN-SUFFIX,llnwd.net,{config::get("appName")}
- DOMAIN-SUFFIX,macid.co,{config::get("appName")}
- DOMAIN-SUFFIX,macromedia.com,{config::get("appName")}
- DOMAIN-SUFFIX,macrumors.com,{config::get("appName")}
- DOMAIN-SUFFIX,mashable.com,{config::get("appName")}
- DOMAIN-SUFFIX,mathjax.org,{config::get("appName")}
- DOMAIN-SUFFIX,medium.com,{config::get("appName")}
- DOMAIN-SUFFIX,mega.co.nz,{config::get("appName")}
- DOMAIN-SUFFIX,mega.nz,{config::get("appName")}
- DOMAIN-SUFFIX,megaupload.com,{config::get("appName")}
- DOMAIN-SUFFIX,microsofttranslator.com,{config::get("appName")}
- DOMAIN-SUFFIX,mindnode.com,{config::get("appName")}
- DOMAIN-SUFFIX,mobile01.com,{config::get("appName")}
- DOMAIN-SUFFIX,modmyi.com,{config::get("appName")}
- DOMAIN-SUFFIX,msedge.net,{config::get("appName")}
- DOMAIN-SUFFIX,myfontastic.com,{config::get("appName")}
- DOMAIN-SUFFIX,name.com,{config::get("appName")}
- DOMAIN-SUFFIX,nextmedia.com,{config::get("appName")}
- DOMAIN-SUFFIX,nsstatic.net,{config::get("appName")}
- DOMAIN-SUFFIX,nssurge.com,{config::get("appName")}
- DOMAIN-SUFFIX,nyt.com,{config::get("appName")}
- DOMAIN-SUFFIX,nytimes.com,{config::get("appName")}
- DOMAIN-SUFFIX,office365.com,{config::get("appName")}
- DOMAIN-SUFFIX,omnigroup.com,{config::get("appName")}
- DOMAIN-SUFFIX,onedrive.com,{config::get("appName")}
- DOMAIN-SUFFIX,onenote.com,{config::get("appName")}
- DOMAIN-SUFFIX,ooyala.com,{config::get("appName")}
- DOMAIN-SUFFIX,openvpn.net,{config::get("appName")}
- DOMAIN-SUFFIX,openwrt.org,{config::get("appName")}
- DOMAIN-SUFFIX,orkut.com,{config::get("appName")}
- DOMAIN-SUFFIX,osxdaily.com,{config::get("appName")}
- DOMAIN-SUFFIX,outlook.com,{config::get("appName")}
- DOMAIN-SUFFIX,ow.ly,{config::get("appName")}
- DOMAIN-SUFFIX,paddleapi.com,{config::get("appName")}
- DOMAIN-SUFFIX,parallels.com,{config::get("appName")}
- DOMAIN-SUFFIX,parse.com,{config::get("appName")}
- DOMAIN-SUFFIX,pdfexpert.com,{config::get("appName")}
- DOMAIN-SUFFIX,periscope.tv,{config::get("appName")}
- DOMAIN-SUFFIX,pinboard.in,{config::get("appName")}
- DOMAIN-SUFFIX,pinterest.com,{config::get("appName")}
- DOMAIN-SUFFIX,pixelmator.com,{config::get("appName")}
- DOMAIN-SUFFIX,pixiv.net,{config::get("appName")}
- DOMAIN-SUFFIX,playpcesor.com,{config::get("appName")}
- DOMAIN-SUFFIX,playstation.com,{config::get("appName")}
- DOMAIN-SUFFIX,playstation.com.hk,{config::get("appName")}
- DOMAIN-SUFFIX,playstation.net,{config::get("appName")}
- DOMAIN-SUFFIX,playstationnetwork.com,{config::get("appName")}
- DOMAIN-SUFFIX,pushwoosh.com,{config::get("appName")}
- DOMAIN-SUFFIX,rime.im,{config::get("appName")}
- DOMAIN-SUFFIX,servebom.com,{config::get("appName")}
- DOMAIN-SUFFIX,sfx.ms,{config::get("appName")}
- DOMAIN-SUFFIX,shadowsocks.org,{config::get("appName")}
- DOMAIN-SUFFIX,sharethis.com,{config::get("appName")}
- DOMAIN-SUFFIX,shazam.com,{config::get("appName")}
- DOMAIN-SUFFIX,skype.com,{config::get("appName")}
- DOMAIN-SUFFIX,smartdnsProxy.com,{config::get("appName")}
- DOMAIN-SUFFIX,smartmailcloud.com,{config::get("appName")}
- DOMAIN-SUFFIX,sndcdn.com,{config::get("appName")}
- DOMAIN-SUFFIX,sony.com,{config::get("appName")}
- DOMAIN-SUFFIX,soundcloud.com,{config::get("appName")}
- DOMAIN-SUFFIX,sourceforge.net,{config::get("appName")}
- DOMAIN-SUFFIX,spotify.com,{config::get("appName")}
- DOMAIN-SUFFIX,squarespace.com,{config::get("appName")}
- DOMAIN-SUFFIX,sstatic.net,{config::get("appName")}
- DOMAIN-SUFFIX,st.luluku.pw,{config::get("appName")}
- DOMAIN-SUFFIX,stackoverflow.com,{config::get("appName")}
- DOMAIN-SUFFIX,startpage.com,{config::get("appName")}
- DOMAIN-SUFFIX,staticflickr.com,{config::get("appName")}
- DOMAIN-SUFFIX,steamcommunity.com,{config::get("appName")}
- DOMAIN-SUFFIX,symauth.com,{config::get("appName")}
- DOMAIN-SUFFIX,symcb.com,{config::get("appName")}
- DOMAIN-SUFFIX,symcd.com,{config::get("appName")}
- DOMAIN-SUFFIX,tapbots.com,{config::get("appName")}
- DOMAIN-SUFFIX,tapbots.net,{config::get("appName")}
- DOMAIN-SUFFIX,tdesktop.com,{config::get("appName")}
- DOMAIN-SUFFIX,techcrunch.com,{config::get("appName")}
- DOMAIN-SUFFIX,techsmith.com,{config::get("appName")}
- DOMAIN-SUFFIX,thepiratebay.org,{config::get("appName")}
- DOMAIN-SUFFIX,theverge.com,{config::get("appName")}
- DOMAIN-SUFFIX,time.com,{config::get("appName")}
- DOMAIN-SUFFIX,timeinc.net,{config::get("appName")}
- DOMAIN-SUFFIX,tiny.cc,{config::get("appName")}
- DOMAIN-SUFFIX,tinypic.com,{config::get("appName")}
- DOMAIN-SUFFIX,tmblr.co,{config::get("appName")}
- DOMAIN-SUFFIX,todoist.com,{config::get("appName")}
- DOMAIN-SUFFIX,trello.com,{config::get("appName")}
- DOMAIN-SUFFIX,trustasiassl.com,{config::get("appName")}
- DOMAIN-SUFFIX,tumblr.co,{config::get("appName")}
- DOMAIN-SUFFIX,tumblr.com,{config::get("appName")}
- DOMAIN-SUFFIX,tweetdeck.com,{config::get("appName")}
- DOMAIN-SUFFIX,tweetmarker.net,{config::get("appName")}
- DOMAIN-SUFFIX,twitch.tv,{config::get("appName")}
- DOMAIN-SUFFIX,txmblr.com,{config::get("appName")}
- DOMAIN-SUFFIX,typekit.net,{config::get("appName")}
- DOMAIN-SUFFIX,ubertags.com,{config::get("appName")}
- DOMAIN-SUFFIX,ublock.org,{config::get("appName")}
- DOMAIN-SUFFIX,ubnt.com,{config::get("appName")}
- DOMAIN-SUFFIX,ulyssesapp.com,{config::get("appName")}
- DOMAIN-SUFFIX,urchin.com,{config::get("appName")}
- DOMAIN-SUFFIX,usertrust.com,{config::get("appName")}
- DOMAIN-SUFFIX,v.gd,{config::get("appName")}
- DOMAIN-SUFFIX,vimeo.com,{config::get("appName")}
- DOMAIN-SUFFIX,vimeocdn.com,{config::get("appName")}
- DOMAIN-SUFFIX,vine.co,{config::get("appName")}
- DOMAIN-SUFFIX,vivaldi.com,{config::get("appName")}
- DOMAIN-SUFFIX,vox-cdn.com,{config::get("appName")}
- DOMAIN-SUFFIX,vsco.co,{config::get("appName")}
- DOMAIN-SUFFIX,vultr.com,{config::get("appName")}
- DOMAIN-SUFFIX,w.org,{config::get("appName")}
- DOMAIN-SUFFIX,w3schools.com,{config::get("appName")}
- DOMAIN-SUFFIX,webtype.com,{config::get("appName")}
- DOMAIN-SUFFIX,wikiwand.com,{config::get("appName")}
- DOMAIN-SUFFIX,wikileaks.org,{config::get("appName")}
- DOMAIN-SUFFIX,wikimedia.org,{config::get("appName")}
- DOMAIN-SUFFIX,wikipedia.com,{config::get("appName")}
- DOMAIN-SUFFIX,wikipedia.org,{config::get("appName")}
- DOMAIN-SUFFIX,windows.com,{config::get("appName")}
- DOMAIN-SUFFIX,windows.net,{config::get("appName")}
- DOMAIN-SUFFIX,wire.com,{config::get("appName")}
- DOMAIN-SUFFIX,wordpress.com,{config::get("appName")}
- DOMAIN-SUFFIX,workflowy.com,{config::get("appName")}
- DOMAIN-SUFFIX,wp.com,{config::get("appName")}
- DOMAIN-SUFFIX,wsj.com,{config::get("appName")}
- DOMAIN-SUFFIX,wsj.net,{config::get("appName")}
- DOMAIN-SUFFIX,xda-developers.com,{config::get("appName")}
- DOMAIN-SUFFIX,xeeno.com,{config::get("appName")}
- DOMAIN-SUFFIX,xiti.com,{config::get("appName")}
- DOMAIN-SUFFIX,yahoo.com,{config::get("appName")}
- DOMAIN-SUFFIX,yimg.com,{config::get("appName")}
- DOMAIN-SUFFIX,ying.com,{config::get("appName")}
- DOMAIN-SUFFIX,yoyo.org,{config::get("appName")}
- DOMAIN-SUFFIX,ytimg.com,{config::get("appName")}

# Telegram
- DOMAIN-SUFFIX,telegra.ph,{config::get("appName")}
- DOMAIN-SUFFIX,telegram.org,{config::get("appName")}

- IP-CIDR,91.108.56.0/22,{config::get("appName")}
- IP-CIDR,91.108.4.0/22,{config::get("appName")}
- IP-CIDR,91.108.8.0/22,{config::get("appName")}
- IP-CIDR,109.239.140.0/24,{config::get("appName")}
- IP-CIDR,149.154.160.0/20,{config::get("appName")}
- IP-CIDR,149.154.164.0/22,{config::get("appName")}

# LAN
- DOMAIN-SUFFIX,local,DIRECT
- IP-CIDR,127.0.0.0/8,DIRECT
- IP-CIDR,172.16.0.0/12,DIRECT
- IP-CIDR,192.168.0.0/16,DIRECT
- IP-CIDR,10.0.0.0/8,DIRECT
- IP-CIDR,17.0.0.0/8,DIRECT
- IP-CIDR,100.64.0.0/10,DIRECT

# 最终规则
- GEOIP,CN,DIRECT
- FINAL,,{config::get("appName")}