local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.UIUtils.UIColorUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.RelicIconInfoPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RelicIconInfoPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "RelicContainer_FadeIn_R"
L2_1 = "RelicContainer_FadeIn_L"
L3_1 = "AvatarRelic_Install"
L4_1 = "RelicIconInfo_Unlock"
function L5_1(A0_2, A1_2, A2_2)
  A0_2._display_add = true
end
L0_1.ctor = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.btn_replace
  function L2_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3.save_navigation_target
    L2_3 = A0_2._binder
    L2_3 = L2_3.btn_replace
    L2_3 = L2_3.gameObject
    L0_3(L1_3, L2_3)
  end
  L1_2.onSelectTrigger = L2_2
  A0_2._is_show_rarity = true
  A0_2._enable_instal_anim = false
  A0_2._is_playing_unlock_anim = false
end
L0_1._on_load = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = A0_2._relic
  A0_2._last_relic = L2_2
  A0_2._relic = A1_2
  L2_2 = A0_2._relic
  L2_2 = G
  L2_2 = L2_2.RelicUtils
  L2_2 = L2_2.is_planar_suit
  L3_2 = A0_2._relic
  L3_2 = L3_2.RelicRow
  L3_2 = L3_2.Type
  L2_2 = L2_2 ~= nil and L2_2
  A0_2._is_planar = L2_2
  L3_2 = A0_2
  L2_2 = A0_2.refresh
  L2_2(L3_2)
end
L0_1.setup_view = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._hide_all
  L1_2(L2_2)
  L1_2 = A0_2._relic
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2.set_empty
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._refresh
    L1_2(L2_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._try_play_install_anim
  L1_2(L2_2)
end
L0_1.refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L1_1
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_in_right = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
end
L0_1.play_fade_in_left = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.UIAnimationUtils
  L1_2 = L1_2.PlayFromBegin
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_root
  L3_2 = L3_1
  L1_2(L2_2, L3_2)
end
L0_1.play_install = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L1_2 = L1_2.isPlaying
  if L1_2 then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = "RelicContainer_Selected"
  L1_2(L2_2, L3_2)
end
L0_1.play_selected = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.set_lock
  L3_2 = true
  L1_2(L2_2, L3_2)
  A0_2._is_playing_unlock_anim = true
  L1_2 = A0_2._anim_event
  if L1_2 == nil then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.RPGAnimationEvent
    L1_2 = L1_2.Get
    L2_2 = A0_2._binder
    L2_2 = L2_2.anim_controller
    L2_2 = L2_2.transform
    L1_2 = L1_2(L2_2)
    A0_2._anim_event = L1_2
    L1_2 = A0_2._anim_event
    L2_2 = L1_2
    L1_2 = L1_2.AddAnimationEvent
    L3_2 = L4_1
    function L4_2()
      local L0_3, L1_3, L2_3
      A0_2._is_playing_unlock_anim = false
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.set_lock
      L2_3 = false
      L0_3(L1_3, L2_3)
    end
    L1_2(L2_2, L3_2, L4_2)
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_controller
  L2_2 = L1_2
  L1_2 = L1_2.SetTrigger
  L3_2 = "Unlockhint"
  L1_2(L2_2, L3_2)
end
L0_1.play_unlock_anim = L5_1
function L5_1(A0_2, A1_2)
  A0_2._is_show_rarity = A1_2
end
L0_1.show_rarity_bg = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  A0_2._enable_instal_anim = A1_2
  L2_2 = A0_2._enable_instal_anim
  if not L2_2 then
    L2_2 = CS
    L2_2 = L2_2.RPG
    L2_2 = L2_2.Client
    L2_2 = L2_2.UIAnimationUtils
    L2_2 = L2_2.PlayToEnd
    L3_2 = A0_2._binder
    L3_2 = L3_2.anim_root
    L4_2 = L3_1
    L2_2(L3_2, L4_2)
  end
end
L0_1.enable_install_anim = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_relic
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._async_load_sprite_to
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_relic
  L4_2 = A0_2._relic
  L4_2 = L4_2.ItemFigureIconPath
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.relic_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._relic
  L3_2 = L3_2.Level
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_rarity
  L1_2(L2_2)
end
L0_1._refresh = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_rarity_list
  L2_2 = A0_2._relic
  L2_2 = L2_2.Row
  L2_2 = L2_2.Rarity
  L2_2 = #L2_2
  L2_2 = L2_2 - 1
  L1_2 = L1_2[L2_2]
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._is_show_rarity
  if not L3_2 then
    L3_2 = A0_2._is_planar
    L3_2 = not L3_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.InventoryModule
  L1_2 = L1_2.GetItemRarityConfig
  L2_2 = A0_2._relic
  L2_2 = L2_2.Row
  L2_2 = L2_2.Rarity
  L2_2 = #L2_2
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.UIColorUtils
  L2_2 = L2_2.GetColor
  L3_2 = L1_2.LineItemRarityColor
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_rarity_line
  L3_2.color = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_rarity_bg
  L3_2.color = L2_2
  L3_2 = A0_2._binder
  L3_2 = L3_2.img_rarity_gradual
  L3_2.color = L2_2
end
L0_1._refresh_rarity = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._enable_instal_anim
  if L1_2 then
    L1_2 = A0_2._relic
    if L1_2 ~= nil then
      L1_2 = A0_2._last_relic
      L2_2 = A0_2._relic
      if L1_2 ~= L2_2 then
        goto lbl_12
      end
    end
  end
  do return end
  ::lbl_12::
  L2_2 = A0_2
  L1_2 = A0_2.play_install
  L1_2(L2_2)
end
L0_1._try_play_install_anim = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_level_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2 or L4_2
  if A1_2 then
    L4_2 = A0_2._relic
    L4_2 = L4_2 ~= nil
  end
  L2_2(L3_2, L4_2)
end
L0_1.show_level = L5_1
function L5_1(A0_2, A1_2)
  A0_2._display_add = A1_2
end
L0_1.set_display_add_when_empty = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_add
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._display_add
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
end
L0_1.set_empty = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  A0_2._is_lock = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_add
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A0_2._relic
  L4_2 = A0_2._is_lock
  L4_2 = L4_2 == nil and L4_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.anim_controller
  L3_2 = L2_2
  L2_2 = L2_2.SetBool
  L4_2 = "IsLocked"
  L5_2 = A1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.set_lock = L5_1
function L5_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2
  L3_2 = A1_2.IsDisplayOnly
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._unbind_btn_callback
    L5_2 = A0_2._binder
    L5_2 = L5_2.btn_replace
    L3_2(L4_2, L5_2)
    return
  end
  A0_2._type = A2_2
  L4_2 = A0_2
  L3_2 = A0_2._bind_btn_callback
  L5_2 = A0_2._binder
  L5_2 = L5_2.btn_replace
  L6_2 = A0_2._on_btn_replace
  L7_2 = A1_2
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L0_1.init_click_callback = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.img_relic
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_empty
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_add
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = pairs
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_rarity_list
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.SafeSetActive
    L8_2 = false
    L6_2(L7_2, L8_2)
  end
end
L0_1._hide_all = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._is_lock
  if L2_2 then
    L2_2 = A0_2._is_playing_unlock_anim
    if not L2_2 then
      L2_2 = G
      L2_2 = L2_2.RelicUtils
      L2_2 = L2_2.show_relic_type_lock_hint
      L2_2()
    end
    return
  end
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Relic.RelicReplacePage"
  L4_2 = A1_2
  L5_2 = A0_2._type
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._on_btn_replace = L5_1
return L0_1
