class WikiController < ApplicationController
  attr_reader :page_title

  def index
    @page_title = "Wiki | "
    render 'wiki/index'
  end

  def event
    @page_title = "Wiki | "
    event_sym = params[:event_name].to_sym
    @display_name = News::EVENT_WIKI_NAME_MAP[event_sym]
    if News::EVENT_WIKI_NAME_MAP.key?(event_sym)
      @event_name = params[:event_name].split("-").join("_")
      render 'wiki/event'
    else
      redirect_to "/404"
    end
  end

  def info
    @info_list = [
      {
        id: 'story',
        title: '橄榄球故事',
        icon: 'coffee',
        entries: [
          {
            title: '英式橄榄球（Rugby Football）的前世今生',
            href: 'https://mp.weixin.qq.com/s?__biz=MzI5MjUwNTUxNQ==&mid=100000064&idx=1&sn=3e9ce4898c4771920a181a3f1078a571',
          },
          {
            title: '[体育人间] 天津橄榄球队',
            href: 'http://tv.cctv.com/2017/11/27/VIDESF0z7GNnWRV6mxO3ULza171127.shtml',
          },
          {
            title: '伦敦恐袭中的第一英雄是怎样炼成的？',
            href: 'https://mp.weixin.qq.com/s?__biz=MzI5MjUwNTUxNQ==&mid=2247485002&idx=1&sn=aa7a2b220f578a3e47851a46dbe07760',
          },
          {
            title: '橄榄球是如何改变一个草根的命运',
            href: 'https://mp.weixin.qq.com/s?__biz=MzI5MjUwNTUxNQ==&mid=2247485099&idx=1&sn=d894b0e6334b936ef966e57545964726',
          },
        ],
      },
      {
        id: 'culture',
        title: '橄榄球文化',
        icon: 'book',
        entries: [
          {
            title: '橄榄球国歌巡礼 Rugby National Anthems',
            href: 'http://music.163.com/#/m/playlist?id=2114939141',
          },
          {
            title: '“心有猛虎 细嗅蔷薇”——各国橄榄球协会Logo文化简介（一）欧洲篇',
            href: 'https://mp.weixin.qq.com/s/JBt1b6wg4oxZ7nskLP5tow',
          },
          {
            title: '“心有猛虎 细嗅蔷薇”——各国橄榄球协会Logo文化简介（二）亚洲篇',
            href: 'https://mp.weixin.qq.com/s/ci0WpkoWSzZF9jF-PD9TEw',
          },
          {
            title: ' Rugby & Respect That’s why we love',
            href: 'https://mp.weixin.qq.com/s/EXclrXpCVMHHkc-JeE5mAA',
          },
        ],
      },
      {
        id: 'rule',
        title: '规则介绍',
        icon: 'exclamation',
        entries: [
          {
            title: '想要看懂英式橄榄球真的就那么难吗（一）',
            href: 'https://mp.weixin.qq.com/s?__biz=MzI3MjIwMTczMg==&mid=2662878122&idx=1&sn=5b771973a924dfa8ebf22fe40a8fa916',
          },
          {
            title: '想要看懂英式橄榄球真的就那么难吗（二）',
            href: 'https://mp.weixin.qq.com/s?__biz=MzI3MjIwMTczMg==&mid=2662878130&idx=1&sn=698fed1091cd3f545fed096a9d6e1900',
          },
          {
            title: '想要看懂英式橄榄球真的就那么难吗（三）',
            href: 'https://mp.weixin.qq.com/s?__biz=MzI3MjIwMTczMg==&mid=2662878143&idx=1&sn=ba665a14f0c44d85956783c5dd939a3b',
          },
          {
            title: '想要看懂英式橄榄球真的就那么难吗（四）',
            href: 'https://mp.weixin.qq.com/s?__biz=MzI3MjIwMTczMg==&mid=2662878161&idx=1&sn=302dc9893cff7259c63e9b8535858354',
          },
          {
            title: '你所不知道的，一种来决定橄榄球比赛输赢的方式',
            href: 'https://mp.weixin.qq.com/s?__biz=MzI3MjIwMTczMg==&mid=2662878093&idx=1&sn=2286e38b2ca9a9016a39c10cab07edf7',
          },
        ],
      },
      {
        id: 'match',
        title: '赛事相关',
        icon: 'flag-checkered',
        entries: [
          {
            title: '说说六国杯都有哪些奖项',
            href: 'https://mp.weixin.qq.com/s/A90tL11HK-lksD8UmLz4Bg',
          },
          {
            title: '你需要知道的那些橄榄球奖杯（一）',
            href: 'https://mp.weixin.qq.com/s?__biz=MzI5ODA1NTc0OA==&mid=2473532677&idx=1&sn=58a2b18724f9a956d3f4518c0d2505f9',
          },
          {
            title: '你需要知道的那些橄榄球奖杯（二）',
            href: 'https://mp.weixin.qq.com/s?__biz=MzI5ODA1NTc0OA==&mid=2473532687&idx=1&sn=e6c79df432ee8efe8a5d31bce79cb403',
          },
          {
            title: '你需要知道的那些橄榄球奖杯（三）南北半球篇',
            href: 'https://mp.weixin.qq.com/s?__biz=MzI5ODA1NTc0OA==&mid=2473532702&idx=1&sn=bad34f6735b706197ae242b98afbe269',
          },
        ],
      },
      {
        id: 'equipment',
        title: '队服装备',
        icon: 'male',
        entries: [
          {
            title: '苏格兰橄榄球代表队发布新赛季球衣',
            href: 'https://mp.weixin.qq.com/s?__biz=MzI5ODA1NTc0OA==&mid=2473532630&idx=1&sn=03787d269d47a9c10f42a8d85fe4a125',
          },
          {
            title: 'Top 14劲旅92竞技发布2017/18赛季球衣',
            href: 'https://mp.weixin.qq.com/s?__biz=MzI5ODA1NTc0OA==&mid=2473532621&idx=1&sn=98813a6125d55e1a4087c1df949034f9',
          },
          {
            title: '2015橄榄球世界杯球衣巡展',
            href: 'https://mp.weixin.qq.com/s?__biz=MzI5ODA1NTc0OA==&mid=226008784&idx=1&sn=458fd54697a530bf73f16283708ae15e',
          },
        ],
      },
      {
        id: 'website',
        title: '英文资讯网站',
        icon: 'language',
        entries: [
          {
            title: 'Planet Rugby',
            href: 'http://www.planetrugby.com/',
          },
          {
            title: 'BBC Rugby Union',
            href: 'http://www.bbc.com/sport/rugby-union',
          },
        ],
      },
    ]
    render "wiki/info"
  end
end
