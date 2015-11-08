xml.instruct!
2  xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
3    xml.title "a project a week"
4    xml.subtitle "Weekly Web Projects"
5    xml.id "http://matthewblode.com/a-project-a-week/"
6    xml.link "href" => "http://matthewblode.com/a-project-a-week/"
7    xml.link "href" => "http://blog.url.com/feed.xml", "rel" => "self"
8    xml.updated blog.articles.first.date.to_time.iso8601
9    xml.author { xml.name "Matthew Blode" }
10
11   blog.articles[0..10].each do |article|
12     xml.entry do
13       xml.title article.title
14       xml.link "rel" => "alternate", "href" => article.url
15       xml.id article.url
16       xml.published article.date.to_time.iso8601
17       xml.updated article.date.to_time.iso8601
18       xml.author { xml.name "Matthew Blode" }
19       xml.summary article.summary, "type" => "html"
20       xml.content article.body, "type" => "html"
21     end
22   end
23 end
