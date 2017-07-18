class WelcomeController < ApplicationController
    def initialize
        pagecount = PageUpdate.count
        @motd = PageUpdate.find(rand(1..pagecount)).motd
    end
end
