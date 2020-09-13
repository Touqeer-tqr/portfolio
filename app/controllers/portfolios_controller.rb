class PortfoliosController < ApplicationController
  
  def index
    @gems_list = ['devise', 'cancancan', 'omniauth', 'devise-jwt', 'tiddle', 'slim', 'sendgrid-rails', 'letter_opener',
      'Jbuilder', 'pg_search', 'friendly_id', 'haml-rails', 'twilio-ruby', 'Kaminari', 'Will_paginate', 
      'geocoder', 'geokit', 'gmaps4rails', 'paperclip', 
      'carrierwave', 'fcm', 'spawnling', 'delayed_job', 'whenever', 'puma', 'capistrano', 'watir', 'selenium-webdriver',
      'ckeditor', 'rails-erd', 'redis', 'fog-aws', 'aws-sdk-s3', 'sitemap_generator', 'elasticsearch', 'dotenv-rails', 'stripe']

    # url: 'https://www.highschoolzoom.com/'
    # url: 'https://www.zenarbitrage.co/'
    @profesional_projects = 
      {
        name: 'HighSchoolZoom', 
        images: ['highschoolzoom_home_2.jpg', 'highschoolzoom-home.png', 'highschoolzoom-school.png', 'highschoolzoom_schoo_2.jpg', 'highschoolzoom_video_2.jpg', 'highschoolzoom_stream_2.jpg'], 
        desc: "Live Sports Streaming Site, Different Schools participate in different Maches and can do live streamm on this, anyone can watch live or recorded matches.",
        url: 'https://highschoolzoom.com/'
      }, 
      {
        name: 'Zen-Arbitrage', 
        images: ['zen-arbitrage-home-2.jpg', 'zen-arbitrage-home.png', 'zen-arbitrage-purchases.png', 'zen-arbitrage-marketplace.png'], 
        desc: "A stock exchange like site with Amazon's Data, Develop New feature, Implemented new Designs",
        url: 'https://www.zenarbitrage.co/'
      }, 
      {
        name: 'SouqOfQatar', 
        images: ['SouqOfQatar1.png', 'SouqOfQatar2.png', 'SouqOfQatar3.png', 'SouqOfQatar4.png', 'SouqOfQatar5.png', 'SouqOfQatar6.png'], 
        desc: "Developed Product Matching Site in Team with proper responsiveness and fast query execution on 1 Million Data with MongoDB.",
        url: 'https://souqofqatar.com/'
      }, 
      {
        name: 'Sample Admin Panel', 
        images: ['ANA1.png', 'ANA2.png', 'ANA3.png', 'ANA4.png', 'ANA5.png', 'ANA6.png', 'ANA7.png'], 
        desc: "Worked on Admin panel, GGoogle Mpas, geofencing and mobile site API development",
        url: 'http://admin-dashboard1.herokuapp.com/'
      }, 
      {
        name: 'Simulyx', 
        images: ['simulyx2.png', 'simulyx3.png', 'simulyx4.png'], 
        desc: "Freelancer Type Website for University",
        url: 'http://souqofqatar.com/'
      }, 
      {
        name: 'PropertyNerd', 
        images: ['property-nerd-home-1.jpg', 'propertynerd2.png', 'propertynerd3.png', 'propertynerd4.png', 'propertynerd5.png', 'propertynerd6.png'], 
        desc: "Worked on Individual Task with team colaboration.",
        url: 'https://www.propertynerd.com.au/'
      }
    @personal_projects =
      {
        name: 'Foodicted', 
        images: ['foodicted1.png', 'foodicted2.png'], 
        desc: "Developed Responsive website that gets food recipes from different sites.",
        url: 'http://foodicted.herokuapp.com/'
      }, 
      {
        name: 'MapMaker', 
        images: ['mapmaker1.png', 'mapmaker2.png'], 
        desc: "A simple site to draw polygons on map and store them on DB as serialized",
        url: 'https://mapdrawer.herokuapp.com/'
      },
      {
        name: 'Slide-Selector Ruby Gem', 
        images: ['range-selector.png'], 
        desc: "Custom form field_tag of range-slider with text_field type selector. You can either choose from drop down or enter your own value and the slider will auto-adjust or you can use the slider to adjust values. This all through on form field f.slide_selector.",
        url: 'https://rubygems.org/gems/slide-selector'
      }
  end

  def download_cv
    send_file(
      "#{Rails.root}/public/Touqeer_Ahmad_CV.pdf",
      filename: "Touqeer Ahmad CV.pdf",
      type: "application/pdf"
    )
  end
  
  def contact_me
    UserMailer.send_email(params).deliver_later
    render :layout => false 
  end

end