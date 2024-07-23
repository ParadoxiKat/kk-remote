local char_int = require("script/character_interface/character")
local kk = require("script/kruise_kontrol")

local interface_name = "kruise_kontrol_updated"

local function materialize_char_from_pindex(pindex)
  local k = kk.Klient.get_or_make(pindex)
  if not k then return end
  return k:get_or_make_character()
end

-- All functions short-circuit if the player index is to a player that doesn't
-- exist or is disconnected. You either get nil or false depending on what the
-- function does.
local interface = {
  -- Start a job.
  --
  -- Internally this is done by determining the position and selected entity
  -- from the cursor, using custom input events.
  --
  -- behavior is undefined if the entity is given and not on the same tile as
  -- the position specified.  If the entity is nil, then this will request one
  -- of the jobs that doesn't need one, for example walking or driving to a
  -- tile.
  start_job = function(player_index, cursor_position, selected_entity)
    local int = materialize_char_from_pindex(player_index)
    if not int then
      return
    end

    int:clear_state()
    int:determine_job(selected_entity, cursor_position)
  end,

  -- Get a LocalisedString which represents KK's current state.
  --
  -- the text of this string does not include the words Kruise Kontrol, and is
  -- simpliy a brief description of the state.  This is visually drawn to the
  -- user by Kruise Kontrol as well.
  --
  -- If the player specified is not doing anything, this returns nil instead.
  get_description = function(player_index)
    local int = materialize_char_from_pindex(player_index)
    if not int then
      return
    end

    return int:get_remark()
  end,

  -- Cancel anything Kruise Kontrol is doing for a player.
  --
  -- Returns a boolean, true if the player was previously active, otherwise
  -- false.
  cancel = function(player_index)
    local int = materialize_char_from_pindex(player_index)
    if not int then
      return false
    end

    local was_active = not int:is_idle()
    int:clear_state()
    return was_active
  end,

  -- Returns whether or not a player is currently active with Kruise Kontrol.
  is_active = function(player_index)
    local int = materialize_char_from_pindex(player_index)
    if not int then
      return false
    end

    return not int:is_idle()
  end,
}

remote.add_interface(interface_name, interface)
