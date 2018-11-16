desc "Lance le bot instatgram"
task run_twitter: :environment do
	InstagramService.new.perform
end
