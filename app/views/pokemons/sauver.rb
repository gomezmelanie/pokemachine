<div class = "container ">
<%=link_to "Retour", root_path, class:"btn btn-outline-secondary"%>
  <div class = "d-flex  align-items-center justify-content-around">
    <%if @pokemon.name == "Pikachu"%>
    <div class = col-4>
      <%= image_tag  "https://www.pokepedia.fr/images/thumb/7/76/Pikachu-DEPS.png/500px-Pikachu-DEPS.png", height: '500' %>
    </div>
    <%elsif @pokemon.name == "Bulbizar" %>
    <div class = col-4>
      <%= image_tag  "https://www.pokepedia.fr/images/thumb/e/ef/Bulbizarre-RFVF.png/500px-Bulbizarre-RFVF.png", height: '500' %>
    </div>
    <%elsif @pokemon.name == "Dracaufeu" %>
    <div class = col-4>
      <%= image_tag  "https://www.pokepedia.fr/images/1/17/Dracaufeu-RFVF.png?20141019190201", height: '500' %>
    </div>
    <%elsif @pokemon.name == "Rondoudou" %>
    <div class = col-4>
      <%= image_tag  "https://www.pokepedia.fr/images/thumb/c/cd/Rondoudou-RFVF.png/500px-Rondoudou-RFVF.png", height: '500' %>
    </div>
    <%elsif @pokemon.name == "Psykokwak" %>
    <div class = col-4>
      <%= image_tag  "https://www.pokepedia.fr/images/thumb/4/44/Psykokwak-RFVF.png/500px-Psykokwak-RFVF.png", height: '500' %>
    </div>
    <%elsif @pokemon.name == "Goupix" %>
    <div class = col-4>
      <%= image_tag  "https://www.pokepedia.fr/images/thumb/f/f6/Goupix-RFVF.png/500px-Goupix-RFVF.png", height: '500' %>
    </div>
    <%end%>
    <div >
      <h1>Name: <%= @pokemon.name %></h1>
      <li>level: <%= @pokemon.level %></li>
      <%if @pokemon.name =="Pikachu" %>
      <li>Catégorie: <%= "Electrik" %></li>
      <%elsif @pokemon.name == "Rondoudou" %>
      <li>Catégorie: <%= "Normal" %></li>
      <%elsif @pokemon.name == "Dracaufeu" %>
      <li>Catégorie: <%= "Feu" %></li>
      <%elsif @pokemon.name == "Bulbizar" %>
      <li>Catégorie: <%= "Plante" %></li>
      <%elsif @pokemon.name == "Psykokwak" %>
      <li>Catégorie: <%= "Eau" %></li>
      <%elsif @pokemon.name == "Goupix" %>
      <li>Catégorie: <%= "Feu" %></li>
      <%end%>
      <li>Address: <%= @pokemon.address %></li>
      <li>Prix: <%= @pokemon.price %></li>
      <h3>Propriétaire: <%= @user.username %></h3>
      </div>
  </div>
  <br>
  <div>
    <%= link_to "supprimer ce Pokemon", pokemon_path(@pokemon), data: {turbo_method: :delete, turbo_confirm: "Are you sure?"}, class:"btn btn-outline-danger"%>
  </div>
</div>