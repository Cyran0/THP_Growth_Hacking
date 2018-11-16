Dotenv.load("./log/.env")

class TwitterService
  def initialize
    @list = []
  end

  def connexion
    @browser = Watir::Browser.new(:firefox)
    @browser.goto'https://twitter.com/login'

    id = @browser.text_field(class: ["js-username-field", "email-input", "js-initial-focus"])
    id.set(ENV["twitter_id"])

    password = @browser.text_field(class: 'js-password-field')
    password.set(ENV["twitter_password"])
    password.send_keys(:enter)

    sleep(5)
  end

  def scrapping
    @browser.goto 'https://twitter.com/42born2code/followers'
    @browser.as(class: ["ProfileCard-screennameLink u-linkComplex js-nav"]).each do |t|
      @list << t.text
  end

    @browser.goto 'https://twitter.com/OCFrance/followers'
    @browser.as(class: ["ProfileCard-screennameLink u-linkComplex js-nav"]).each do |t|
      @list << t.text
  end

    @browser.goto 'https://twitter.com/grafikart_fr/followers'
    @browser.as(class: ["ProfileCard-screennameLink u-linkComplex js-nav"]).each do |t|
      @list << t.text
  end
  end

  def tweet
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV["twitter_consumer_key"]
      config.consumer_secret     = ENV["twitter_consumer_secret"]
      config.access_token        = ENV["twitter_access_token"]
      config.access_token_secret = ENV["twitter_access_token_secret"]
    end

    @list.each do |x|
      p @client.update ("Salut #{x} je te conseille de venir voir notre page très intérésente.")
    end
  end

  def perform
    connexion
    scrapping
    tweet
  end
end
