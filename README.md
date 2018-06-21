# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

	<label>Name: </label>
	<%=f.text_field :name %><br>
	<label>City: </label>
	<%=f.text_field :city %><br>
	<label>State: </label>
	<%=f.text_field :state %><br>
	<label>Gym affiliation: </label>
	<%=f.collection_select(:gym_id, Gym.all[0...-1], :id, :name, {:include_blank => 'Select your gym'})%><br>
	<label>Email: </label>
	<%=f.text_field :email %><br>
	<label>Username: </label>
	  <%=f.text_field :username %><br> 
	<label>Password: </label>
	  <%=f.text_field :password %><br>

	<label>Name: </label>
	<%=f.text_field :name %>
	<label>Conditioning type: </label>
	<%=f.text_field :conditioning_type %>
	<label>Description: </label>
	<%=f.text_area :description %>

<div class="form-group">
        <%= f.label :name, "Name:", class: "col-xs-2 control-label" %>
        <div class="col-xs-10 trial">
          <%= f.text_field :name, class: "form-control" %>
        </div>
      </div>
      <div class="form-group">
        <%= f.label :conditioning_type, "Conditioning Type:", class: "col-xs-2 control-label" %>
        <div class="col-xs-10 trial">
          <%= f.text_field :conditioning_type, class: "form-control" %>
        </div>
      </div>

      <div class="form-group">
        <%= f.label :description, "Description:", class: "col-xs-2 control-label" %>
        <div class="col-xs-10 trial">
          <%= f.text_field :description, class: "form-control" %>
        </div>
      </div>