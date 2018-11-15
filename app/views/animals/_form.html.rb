<h1> <%= @animal.id ? 'Edit Animal' : 'Create Animal' %> </h1>
<hr />
<%= form_for @animal do |f| %>
  <%= f.label :name %>
  <%= f.text_field :name, required: true, autofocus: true %>
  <%= f.label :type %>
  <%= f.text_field :type, required: true, autofocus: true %>
  <%= f.label :age %>
  <%= f.text_field :age, required: true, autofocus: true %>
  <%+ f.submit %>
  <% end %>
  
