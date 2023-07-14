#!/bin/bash

DNS_SERVER="127.0.0.1"

DOMAINS=("google.com" "facebook.com" "yahoo.com" "twitter.com" "instagram.com" "linkedin.com" "reddit.com" "amazon.com" "wikipedia.org" "github.com" "ebay.com" "netflix.com" "pinterest.com" 
"tumblr.com" "wordpress.com" "craigslist.org" "imdb.com" "stackoverflow.com" "bbc.com" "nytimes.com" "cnn.com" "msn.com" "foxnews.com" "huffingtonpost.com" "theguardian.com" "techcrunch.com" 
"engadget.com" "wired.com" "mashable.com" "businessinsider.com" "forbes.com" "bloomberg.com" "reuters.com" "cnet.com" "arstechnica.com" "gizmodo.com" "theverge.com" "slashdot.org" "espn.com" 
"nba.com" "mlb.com" "nfl.com" "nhl.com" "pga.com" "ncaa.com" "fifa.com" "uefa.com" "nasa.gov" "weather.gov" "cdc.gov" "nih.gov" "who.int" "redcross.org" "unicef.org" "weforum.org" "worldbank.org" 
"imf.org" "oecd.org" "unesco.org" "wto.org" "icrc.org" "hrw.org" "amnesty.org" "greenpeace.org" "wwf.org" "sierraclub.org" "aclu.org" "eff.org" "fsf.org" "creativecommons.org" "wikimedia.org" 
"mozilla.org" "gnu.org" "bitcoin.org" "ethereum.org" "ripple.com" "coinbase.com" "binance.com" "kraken.com" "bitstamp.net" "bitmex.com" "bitfinex.com" "poloniex.com" "bittrex.com" "okex.com" 
"huobi.com" "ftx.com" "blockchain.info" "etherscan.io" "coinmarketcap.com" "coingecko.com" "icodrops.com" "icos.icobox.io" "tokenmarket.net" "icobench.com" "coinlist.co" "crunchbase.com" 
"angel.co" "producthunt.com" "indiegogo.com" "kickstarter.com" "gofundme.com" "patreon.com" "gumroad.com" "teespring.com" "etsy.com" "ebates.com")

for DOMAIN in "${DOMAINS[@]}"

do

 printf "${DOMAIN}\t"

dig @${DNS_SERVER} ${DOMAIN} | grep "Query time:" | awk '{print $4}'

done
