module Food
    class API < Grape::API

        resource :food do
            desc "Return the information of the given bar-code"
            params do 
                requires :id, type: String, desc: "bar-code"
            end
            route_param :id do
                get do
                    {:id => params[:id]}
                end
            end
        end


    end
end

