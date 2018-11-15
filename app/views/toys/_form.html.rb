<h1><%= @toy.id ? "Edit Toy" : "Create a Toy" %></h1>
<hr />
<%= form_for [@animal, @toy] do |f| %>
  <%= f.label :name %>
  <%= f.text_field :name, required: true, autofocus: true %>
  <br />
  <%= f.label :description %>
  <%= f.text_field :description, required: true, autofocus: true %>
  <br />
  <%= f.label :amount %>
  <%= f.text_field :amount, required: true, autofocus: true %>
  <%+ f.submit %>
  <% end %>
  
