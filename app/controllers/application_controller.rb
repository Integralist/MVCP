class ApplicationController < Sinatra::Base
    helpers ApplicationHelper

    use Rack::Deflater # gzip all static content

    MONTH = 2678400 # ((60*60)*24)*31

    set :views,                File.expand_path('../../views', __FILE__)
    set :public_folder,        File.expand_path('../../../', __FILE__)
    set :static_cache_control, [:public, :max_age => MONTH]
    set :server,               %w[thin webrick]

    before do
        request.path_info.sub!(%r{/$}, '') # corrects issue with routing when extra slash added to the end of the requested url
        cache_control :public, :must_revalidate, :max_age => MONTH
    end

    # will be used to display 404 error pages
    not_found do
        title 'Not Found!'
        erb :not_found
    end
end
