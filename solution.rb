require "sinatra"

dilo = ""
get "/" do
    erb :index
end

post "/" do
    dilo = params[:dilo]
    redirect "/oyeme"
end

get "/oyeme" do
    if dilo == dilo.upcase
        "<h1>Ahhh si, manzanas!</h1>"
    else
        "Habla mas duro mijito"
    end
end