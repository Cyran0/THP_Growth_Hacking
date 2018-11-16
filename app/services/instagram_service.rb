Dotenv.load("./log/.env")

class InstagramService
  def connection
    @browser = Watir::Browser.new(:firefox)
    @browser.goto "https://www.instagram.com/accounts/login"
    @browser.button(:xpath => "/html/body/span/section/main/div/article/div/div[1]/div/form/div[5]/button").click

    mail = @browser.text_field(id: "email") # select barre de recherche
    mail.set(ENV["instagram_id"]) # search

    mdp = @browser.text_field(id: "pass") # select barre de recherche
    mdp.set(ENV["instagram_password"]) # search

    mdp.send_keys(:enter)
    sleep(10)
  end

  def scrap
    sleep(5)
    @browser.goto "https://www.instagram.com/openclassrooms/"
    sleep(3)
    @browser.a(class: "-nal3 ").click
    sleep(5)

    @liste = []

    @browser.elements(class: ["FPmhX", "notranslate", "_0imsa"]).each do |td|
      # puts td.a.href
      puts td.text
      puts td.href
      @liste << td.href
    end
  end


  def like
    sleep(3)
    a = []
    @browser.elements(class: ["v1Nh3", "kIKUG",  "_bz0w"]).each do |td|
      a << td.a.href
    end

    a.each do |i|
      @browser.goto i
      sleep(10)
      @browser.button(class: ["coreSpriteHeartOpen", "_0mzm-", "dCJp8"]).click
      comment = @browser.textarea(class: "Ypffh")
      comment.set("Viens voir notre projet http://thehackingproject.org/ si tu veux apprendre à coder lien dans ma bio")
      comment.send_keys(:enter)
    end
  end

  def perform
    connection
    scrap
    @liste.each do |i|
      @browser.goto i
      like
    end
  end
end
