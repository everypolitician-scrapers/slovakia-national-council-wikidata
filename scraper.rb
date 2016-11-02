#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'



term_2016 = EveryPolitician::Wikidata.wikipedia_xpath(
  url:   'https://sk.wikipedia.org/wiki/Zoznam_poslancov_NR_SR_(2016_–_2020)',
  xpath: '//h2[contains(.,"Poslanci")]//following-sibling::ol[1]/li//a[not(@class="new")]/@title',
)

term_2012 = EveryPolitician::Wikidata.wikipedia_xpath( 
  url:   'https://sk.wikipedia.org/wiki/Zoznam_poslancov_NR_SR_(2012_–_2016)',
  xpath: '//h2[contains(.,"Poslanci")]//following-sibling::ol[1]/li//a[not(@class="new")]/@title',
) 

term_2010 = EveryPolitician::Wikidata.wikipedia_xpath( 
  url:   'https://sk.wikipedia.org/wiki/Zoznam_poslancov_NR_SR_(2010_–_2012)',
  xpath: '//h2[contains(.,"Poslanci")]//following-sibling::ol[1]/li//a[not(@class="new")]/@title',
) 

term_2006 = EveryPolitician::Wikidata.wikipedia_xpath( 
  url:   'https://sk.wikipedia.org/wiki/Zoznam_poslancov_NR_SR_(2006_–_2010)',
  xpath: '//h2[contains(.,"Poslanci")]//following-sibling::ol[1]/li//a[1][not(@class="new")]/@title',
) 

term_2002 = EveryPolitician::Wikidata.wikipedia_xpath(
  url:   'https://sk.wikipedia.org/wiki/Zoznam_poslancov_NR_SR_(2002_–_2006)',
  xpath: '//h2[contains(.,"Poslanci")]//following-sibling::ul[1]/li//a[1][not(@class="new")]/@title',
) 

term_1998 = EveryPolitician::Wikidata.wikipedia_xpath( 
  url:   'https://sk.wikipedia.org/wiki/Zoznam_poslancov_NR_SR_(1998_–_2002)',
  xpath: '//h2[contains(.,"Poslanci")]//following-sibling::ul[1]/li//a[1][not(@class="new")]/@title',
) 

names = (term_2016 + term_2012 + term_2010 + term_2006 + term_2002 + term_1998).uniq

EveryPolitician::Wikidata.scrape_wikidata(names: { sk: names }, output: false) 

