# encoding: utf-8
# Tämä ohjelma twiittaa satunnaisen lauseen Pekka Himasen Sininen kirja -teoksesta

# -----------------------------------------------------------------------------------------------------------
# Tämä ohjelma on lisensoitu AGPLv3 -lisenssillä. Lisenssi täällä: http://www.gnu.org/licenses/agpl-3.0.html
# Ohjelmaa saa käyttää melko vapaasti, kunhan uudet versiot lähdekoodista jaetaan samalla lisenssillä.
# ----------------------------------------------------------------------------------------------------------

# Lataa tarvittavat kirjastot

require 'rubygems'
require 'twitter'   # Yhteydenpitoon Twitterin kanssa

# Valitse lause

lauseet = [ ] # Tähän tulee sulkujen sisään lauseet lainausmerkeissä. Tekijänoikeusyistä poistin lauseet tästä

lause = lauseet[rand(lauseet.size)][0..115]  + ' http://bit.ly/U1s45G'

# Twiittaa @himanenbot
# Tarvitset Twitteriltä Access tokenin, access token secretin, Consumer keyn ja Consumer secretin. Ne saa rekisteröitymällä developeriksi

Twitter.configure do |config|
  config.consumer_key = ""
  config.consumer_secret = ""
  config.oauth_token = ""
  config.oauth_token_secret = ""
end

Twitter.update(lause)
