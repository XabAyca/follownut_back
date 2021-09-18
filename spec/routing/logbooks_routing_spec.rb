require "rails_helper"

RSpec.describe LogbooksController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/logbooks").to route_to("logbooks#index")
    end

    it "routes to #show" do
      expect(get: "/logbooks/1").to route_to("logbooks#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/logbooks").to route_to("logbooks#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/logbooks/1").to route_to("logbooks#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/logbooks/1").to route_to("logbooks#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/logbooks/1").to route_to("logbooks#destroy", id: "1")
    end
  end
end
