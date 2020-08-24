
Video by Nicky Dover: https://www.youtube.com/watch?v=3mb-MzZZU8g
    Timestamps in my rails notes

STEP 1: rails g model Coupon coupon_code:string store:string
    Builds model & table migration

    NOTE rails g            <<= lists generators
    NOTE rails g model      <<= generates model instructions
    NOTE rails g migration  <<= generates migration instructions (change table)
    NOTE rails g controller <<= generates controller instructions

STEP 2: rails db:migrate

STEP 3: rails g controller Coupons index show new create
    Builds controller & views folder

STEP 4:  renamed config/secrets-template.yml to config/secrets.yml

NOTE    Put byebug inside a method in the controllers (show, create, etc)
        Run rails s
            ex To see data in show method, enter:
                params[:id]             <<= shows the id number
                NOW YOU HAVE TO FIND THE COUPON IN WITH:
                    Coupon.find(params[:id])
                    Coupon.find_by(id: params[:id])
                ASSIGN TO VARIABLE TO MANIPULATE:
                    @coupon = Coupon.find(params[:id])

NOTE 01:16:00 If link does NOT work, check quotation marks:
      <%= link_to “Back to All Listed coupons”, coupons_path %>
      <%= link_to "Back to SINGLE coupon", coupon_path(coupon) %>
            NOTE using (coupon.id) or (coupon) is okay NOTE
NOTE List all available routes with:    localhost:3000/rails/info/routes

STEP 5: Build out the index & show erb pages so that they display data

STEP 6: Line 13 in File app/views/coupons/new.html.erb
    Solution had an authenticity_token:
        <%= hidden_field_tag :authenticity_token, form_authenticity_token %>

STEP 7: Did NOT need a create erb file
        Create is a post method


