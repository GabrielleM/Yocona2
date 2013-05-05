module NavigationHelpers



class Trip < ActiveRecord::Base
  attr_accessible :leader, :agency, :agency_contact, :report_link, :start_date, :pictures, :duration, :flow, :summary, :num_participants, :num_guides, :river_id

end


class Tmp < ActiveRecord::Base
  attr_accessible :leader, :agency, :agency_contact, :report_link, :start_date, :pictures, :duration, :flow, :summary, :num_participants, :num_guides, :attachments_attributes, :river_id
  belongs_to :river
  validates_presence_of :river
  # mount_uploader :image, ImageUploader
  #MH 4/23/13 Code for Multiple photo upload in CarrierWave
  has_many :attachments, :as => :attachable
  accepts_nested_attributes_for :attachments, :allow_destroy => true

end


Trip._validators = Tmp._validators

  
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the (Yocona )?home\s?page$/ then  '/'
    when /^the Yocona home page$/ then  '/'
    when /the Yocona home page/ then '/'
    when /the (Yocona )?landing page/ then '/'

    when /the rivers index/ then '/rivers(.:format)'
    when /list rivers/ then '/rivers'

    when /create (a )?river/ then '/rivers(.:format)'
    when /new river/ then '/rivers/new(.:format)'
    when /edit river/ then '/rivers/:id/edit(.:format)'
    when /show river/ then '/rivers/:id(.:format)'
    when /update river/ then '/rivers/:id(.:format)'
    when /delete river/ then '/rivers/:id(.:format)'

    when /the trip?(s) index/ then '/rivers(.:format)'
    when /list trips/ then '/rivers/1/trips'

    when /create (a )?trip/ then '/trips(.:format)'
    when /new trip/ then '/trips/new(.:format)'
    when /edit trip/ then '/trips/:id/edit(.:format)'
    when /show trip/ then '/trips/:id(.:format)'
    when /update trip/ then '/trips/:id(.:format)'
    when /delete trip/ then '/rivers/1/trips'


    when /GET    alltrips index/ then '/alltrips(.:format)'
    when /GET    trips index/ then '/rivers/:river_id/trips(.:format)'
    when /POST   trips create/ then '/rivers/:river_id/trips(.:format)'
    when /GET    trips new/ then '/rivers/:river_id/trips/new(.:format)'
    when /GET    trips edit/ then '/rivers/:river_id/trips/:id/edit(.:format'
    when /GET    trips show/ then '/rivers/:river_id/trips/:id(.:format)'
    when /PUT    trips update/ then '/rivers/:river_id/trips/:id(.:format)'
    when /DELETE trips destroy/ then '/rivers/:river_id/trips/:id(.:format)'
    when /GET    rivers index/ then '/rivers(.:format)'
    when /POST   rivers create/ then '/rivers(.:format)'
    when /GET    rivers new/ then '/rivers/new(.:format)'
    when /GET    rivers edit/ then '/rivers/:id/edit(.:format)'
    when /GET    rivers show/ then '/rivers/:id(.:format)'
    when /PUT    rivers update/ then '/rivers/:id(.:format)'
    when /DELETE rivers destroy/ then '/rivers/:id(.:format)'
    when /       trips search/ then '/search(.:format)'
    when /       trips browse/ then '/browse(.:format)'
    when /GET    devise sessions new/ then '/users/sign_in(.:format)'
    when /POST   devise sessions create/ then '/users/sign_in(.:format)'
    when /DELETE devise sessions destroy/ then '/users/sign_out(.:format)'
    when /POST   devise passwords create/ then '/users/password(.:format)'
    when /GET    devise passwords new/ then '/users/password/new(.:format)'
    when /GET    devise passwords edit/ then '/users/password/edit(.:format)'
    when /PUT    devise passwords update/ then '/users/password(.:format)'
    when /GET    devise_invitable registrations cancel/ then '/users/cancel(.:format)'
    when /POST   devise_invitable registrations create/ then '/users(.:format)'
    when /GET    devise_invitable registrations new/ then '/users/sign_up(.:format)'
    when /GET    devise_invitable registrations edit/ then '/users/edit(.:format)'
    when /PUT    devise_invitable registrations update/ then '/users(.:format)'
    when /DELETE devise_invitable registrations destroy/ then '/users(.:format)'
    when /POST   devise confirmations create/ then '/users/confirmation(.:format)'
    when /GET    devise confirmations new/ then '/users/confirmation/new(.:format)'
    when /GET    devise confirmations show/ then '/users/confirmation(.:format)'
    when /GET    devise invitations edit/ then '/users/invitation/accept(.:format)'
    when /POST   devise invitations create/ then '/users/invitation(.:format)'
    when /GET    devise invitations new/ then '/users/invitation/new(.:format)'
    when /PUT    devise invitations update/ then '/users/invitation(.:format)'

    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))
    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)


=begin

                alltrips GET    /alltrips(.:format)                        alltrips#index
             river_trips GET    /rivers/:river_id/trips(.:format)          trips#index
                         POST   /rivers/:river_id/trips(.:format)          trips#create
          new_river_trip GET    /rivers/:river_id/trips/new(.:format)      trips#new
         edit_river_trip GET    /rivers/:river_id/trips/:id/edit(.:format) trips#edit
              river_trip GET    /rivers/:river_id/trips/:id(.:format)      trips#show
                         PUT    /rivers/:river_id/trips/:id(.:format)      trips#update
                         DELETE /rivers/:river_id/trips/:id(.:format)      trips#destroy
                  rivers GET    /rivers(.:format)                          rivers#index
                         POST   /rivers(.:format)                          rivers#create
               new_river GET    /rivers/new(.:format)                      rivers#new
              edit_river GET    /rivers/:id/edit(.:format)                 rivers#edit
                   river GET    /rivers/:id(.:format)                      rivers#show
                         PUT    /rivers/:id(.:format)                      rivers#update
                         DELETE /rivers/:id(.:format)                      rivers#destroy
                  search        /search(.:format)                          trips#search
                  browse        /browse(.:format)                          trips#browse
        new_user_session GET    /users/sign_in(.:format)                   devise/sessions#new
            user_session POST   /users/sign_in(.:format)                   devise/sessions#create
    destroy_user_session DELETE /users/sign_out(.:format)                  devise/sessions#destroy
           user_password POST   /users/password(.:format)                  devise/passwords#create
       new_user_password GET    /users/password/new(.:format)              devise/passwords#new
      edit_user_password GET    /users/password/edit(.:format)             devise/passwords#edit
                         PUT    /users/password(.:format)                  devise/passwords#update
cancel_user_registration GET    /users/cancel(.:format)                    devise_invitable/registrations#cancel
       user_registration POST   /users(.:format)                           devise_invitable/registrations#create
   new_user_registration GET    /users/sign_up(.:format)                   devise_invitable/registrations#new
  edit_user_registration GET    /users/edit(.:format)                      devise_invitable/registrations#edit
                         PUT    /users(.:format)                           devise_invitable/registrations#update
                         DELETE /users(.:format)                           devise_invitable/registrations#destroy
       user_confirmation POST   /users/confirmation(.:format)              devise/confirmations#create
   new_user_confirmation GET    /users/confirmation/new(.:format)          devise/confirmations#new
                         GET    /users/confirmation(.:format)              devise/confirmations#show
  accept_user_invitation GET    /users/invitation/accept(.:format)         devise/invitations#edit
         user_invitation POST   /users/invitation(.:format)                devise/invitations#create
     new_user_invitation GET    /users/invitation/new(.:format)            devise/invitations#new
                         PUT    /users/invitation(.:format)                devise/invitations#update
                    root        /                                          trips#landing
=end