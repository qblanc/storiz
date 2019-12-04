  <div class="scenes mt-4">
    <% if @project.scenes.any? %>
      <%= link_to scene_path(@project.scenes.order(:updated_at).last) do %>
        <div>
          <h2>Writing Room</h2>
          <h4><%= @project.scenes.length %> scenes</h4>
        </div>
      <% end %>
    <% else %>
      <%= link_to scene_path do %>
        <div>
          <h2>Writing Room</h2>
          <h4><%= @project.scenes.length %> scenes</h4>
        </div>
      <% end %>
    <% end %>
  </div>
  <% if @project.scenes.any? %>
    <div class="d-flex justify-content-around">
      <% last_scene = @scenes.order(created_at: :desc).limit(1).first %>
        <%= link_to scene_path(last_scene), class:"" do %>
          <h4 class="last-scenes mt-2"><strong>Last added scene</strong></h4>
          <div class="last-scenes">
          <% created = Time.now.strftime("%Y%j").to_i - last_scene.created_at.strftime("%Y%j").to_i %>
          <% if created == 0 %>
            Scene <%= last_scene.number %><p class="d-inline text-muted"> - Today</p>
          <% elsif created == 1 %>
            Scene <%= last_scene.number %><p class="d-inline text-muted"> - <%= created %> day ago</p>
          <% else %>
            Scene <%= last_scene.number %><p class="d-inline text-muted"> - <%= created %> days ago</p>
          <% end %>
          </div>
        <% end %>
      <% updated_scene = @scenes.order(updated_at: :desc).limit(1).first %>
      <%= link_to scene_path(updated_scene), class:"" do %>
        <h4 class="last-scenes mt-2"><strong>Last updated scene</strong></h4>
        <div class="last-scenes">
          <% updated = Time.now.strftime("%Y%j").to_i - updated_scene.updated_at.strftime("%Y%j").to_i %>
          <% if updated == 0 %>
            Scene <%= updated_scene.number %><p class="d-inline text-muted"> - Today</p>
          <% elsif updated == 1 %>
            Scene <%= updated_scene.number %><p class="d-inline text-muted"> - 1 day ago</p>
          <% else %>
            Scene <%= updated_scene.number %><p class="d-inline text-muted"> - <%= updated %> days ago</p>
          <% end %>
        </div>
      <% end %>
    </div>
  <% else %>
    <div class="d-flex flex-column align-items-center">
      <a class="btn btn-info mt-2 ml-3 mr-n4" data-toggle="collapse" href="#newScene" role="button" aria-expanded="false" aria-controls="newScene">
        <i class="fas fa-plus"></i> Create your first scene
      </a>
      <div class="collapse" id="newScene">
        <%= simple_form_for [@project, @scene] do |f| %>
          <div class="mt-3">
            <%= f.input :title, :label => false, :placeholder => "Title", input_html: { class: '' } %>
            <div class="d-flex justify-content-center mt-0">
            <%= f.button :submit, "Create", class:"btn btn-info" %>
            </div>
          </div>
        <% end %>
      </div>
    </div>
  <% end %>
