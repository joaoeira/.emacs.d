;;FEEDS

(setq elfeed-feeds
      '(
        "http://informationtransfereconomics.blogspot.com/feeds/posts/default"
        "https://www.bloomberg.com/view/rss/topics/money-stuff.rss"
        "http://feeds.feedburner.com/marginalrevolution/feed"
        "http://jpkoning.blogspot.com/feeds/posts/default"
        "http://www.forbes.com/sites/francescoppola/feed/"
        "http://feeds.feedburner.com/economistsdoitwithmodels"
        "http://economistsview.typepad.com/economistsview/rss.xml"
        "http://scottgehlbach.net/feed/"
        "https://fxdiebold.blogspot.com/feeds/posts/default"
        "http://peterturchin.com/blog/feed/"
        "http://www.enlightenmenteconomics.com/blog/index.php/feed/"
        "http://worthwhile.typepad.com/worthwhile_canadian_initi/rss.xml"
        "http://www.arnoldkling.com/blog/feed/"
        "http://80000hours.org/blog/feed.atom"
        "http://notesonliberty.com/feed/"
        "https://novirtue.org/feed/"
        "http://hipcrimevocab.com/feed/"
        "http://maxroser.com/feed/"
        "http://daviddfriedman.blogspot.com/feeds/posts/default"
        "http://scholars-stage.blogspot.com/feeds/posts/default"
        "http://uneasymoney.com/feed/"
        "http://feeds.feedburner.com/jasoncollins"
        "http://gregmankiw.blogspot.com/feeds/posts/default"
        "http://nadaesgratis.es/feed"
        "http://www.themoneyillusion.com/?feed=rss2"
        "https://www.alt-m.org/feed/"
        "http://www.econlib.org/library/EconTalk.xml"
        "http://econlog.econlib.org/index.rdf"
        "https://davegiles.blogspot.com/feeds/posts/default?alt=rss"
        "http://www.stat.columbia.edu/~cook/movabletype/mlm/atom.xml"
        "http://microeconomicinsights.org/feed/"
        "https://www.blogger.com/feeds/4338724676892513065/posts/default"
        "http://www.gridsagegames.com/blog/feed/"
        "http://feeds.feedburner.com/StudyHacks"
        "http://globalguerrillas.typepad.com/globalguerrillas/atom.xml"
        "http://feeds.feedburner.com/bmndr"
        "http://crookedtimber.org/feed/"
        "http://wholehealthsource.blogspot.com/feeds/posts/default"
        "https://lifescivc.com/feed/"
        "http://johnhcochrane.blogspot.com/feeds/posts/default"
        "http://www.johndcook.com/blog/feed/"
        "http://thewertzone.blogspot.com/feeds/posts/default"
        "http://perfecthealthdiet.com/feed/"
        "http://ofblog.blogspot.com/feeds/posts/default"
        "http://www.shaviro.com/Blog/?feed=rss2"
        "http://robjhyndman.com/researchtips/feed/"
        "http://artir.wordpress.com/feed/"
        "http://www.rationaloptimist.com/blog-rss.aspx"
        "https://www.gnxp.com/WordPress/feed/"
        "http://criticalmargins.com/feed/"
        "http://feeds.feedburner.com/QuantifiedSelf"
        "http://lukemuehlhauser.com/feed/"
        "http://datacolada.org/feed/"
        "http://www.rifters.com/crawl/?feed=rss2"
        "https://ofdollarsanddata.com/feed/"
        "http://www.ft.com/rss/life-arts/lunch-with-the-ft"
        "http://tuckermax.me/feed/"
        "http://www.antipope.org/charlie/blog-static/atom.xml"
        "http://politicalarithmetick.com/feed/"
        "http://www.ryanholiday.net/feed/"
        "http://feeds.feedburner.com/codinghorror/"
        "http://www.stephanguyenet.com/feed/"
        "http://www.edge.org/feed"
        "https://www.blogger.com/feeds/987850932434001559/posts/default"
        "http://rsbakker.wordpress.com/feed/"
        "http://thoughtcatalog.com/author/ryan-holiday/feed/"
        "http://www.overcomingbias.com/feed"
        "http://www.daniellemorrill.com/feed/atom/"
        "http://blog.stephenwolfram.com/feed/"
        "http://feeds.wolfire.com/WolfireGames"
        "https://infoproc.blogspot.com/feeds/posts/default?alt=rss"
        "http://www.mccarthy-digital.com/feed/"
        "http://www.idealog.com/feed/"
        "http://www.stochasticlifestyle.com/feed/"
        "http://www.chrisstucchio.com/blog/atom.xml"
        "http://philosophyofbrains.com/feed"
        "https://www.blogger.com/feeds/22973357/posts/default"
        "http://scottaaronson.com/blog/?feed=rss2"
        "http://sometimesimwrong.typepad.com/wrong/rss.xml"
        "http://slatestarcodex.com/feed/"
        "http://www.consciousentities.com/?feed=rss2"
        "https://adamtooze.com/feed/"
        "https://www.bloomberg.com/view/rss/contributors/matt-levine.rss"
        "https://traditionsofconflict.com/blog/"
        "http://irreal.org/blog/"
        "http://www.econlib.org/feed/"
        ))


;so that old entries get read if starting on a new pc
(add-hook 'elfeed-new-entry-hook
          (elfeed-make-tagger :before "1 weeks ago"
                              :remove 'unread))

(global-set-key (kbd "C-x w") 'elfeed)

(defun elfeed-mark-all-as-read ()
      (interactive)
      (mark-whole-buffer)
      (elfeed-search-untag-all-unread))

(provide 'elfeed-settings)
