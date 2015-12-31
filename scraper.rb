#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.wikipedia_xpath( 
  url:   'https://sk.wikipedia.org/wiki/Zoznam_poslancov_NR_SR_(2012_–_2016)',
  xpath: '//h2[contains(.,"Poslanci")]//following-sibling::ol/li//a[not(@class="new")]/@title',
) 

EveryPolitician::Wikidata.scrape_wikidata(names: { sk: names }, output: false) 
warn EveryPolitician::Wikidata.notify_rebuilder

