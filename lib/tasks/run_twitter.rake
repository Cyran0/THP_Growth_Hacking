
desc "Lance le bot twitter"
task run_twitter: :environment do
	TwitterService.new.perform
end
