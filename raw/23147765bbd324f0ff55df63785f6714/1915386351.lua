local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueNous.DiceBuild.Components.RogueNousDiceSlotPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueNousDiceSlotPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = {}
L1_1.Epic = 3
L1_1.Rare = 2
L1_1.Common = 1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.root_btn
  L4_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._play_effect_if_surface_changed
  L5_2 = A0_2._equipped_surface_id
  L6_2 = A1_2.CurEquippedSurface
  L6_2 = L6_2.SurfaceID
  L3_2(L4_2, L5_2, L6_2)
  A0_2._slot_data = A1_2
  A0_2._index = A2_2
  L3_2 = A0_2._slot_data
  L3_2 = L3_2.CurEquippedSurface
  L3_2 = L3_2.SurfaceID
  A0_2._equipped_surface_id = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._load_sprite_to
  L5_2 = A0_2._binder
  L5_2 = L5_2.icon
  L6_2 = A0_2._slot_data
  L6_2 = L6_2.SurfaceIconPath
  L3_2(L4_2, L5_2, L6_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.icon
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetColor
  L5_2 = G
  L5_2 = L5_2.RogueNousUtils
  L5_2 = L5_2.get_color_by_surface_rarity
  L6_2 = A0_2._slot_data
  L6_2 = L6_2.CurEquippedSurface
  L6_2 = L6_2.Rarity
  L5_2, L6_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_rarity_bg
  L3_2(L4_2)
end
L0_1.setup_view = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.quality_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.stage_two_ring_root
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.stage_two_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.stage_one_bg
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_unlimit_mode_active = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._on_root_btn_clicked
  L1_2(L2_2)
end
L0_1.trigger_click = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  if A1_2 == nil then
    return
  end
  if A1_2 == A2_2 then
    return
  end
  L3_2 = A0_2._binder
  L3_2 = L3_2.effect_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = false
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.effect_root
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = true
  L3_2(L4_2, L5_2)
end
L0_1._play_effect_if_surface_changed = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.locked_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.common_bg_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._slot_data
  L3_2 = L3_2.CurEquippedSurface
  L3_2 = L3_2.Rarity
  L4_2 = L1_1.Common
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rare_bg_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._slot_data
  L3_2 = L3_2.CurEquippedSurface
  L3_2 = L3_2.Rarity
  L4_2 = L1_1.Rare
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.epic_bg_root
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._slot_data
  L3_2 = L3_2.CurEquippedSurface
  L3_2 = L3_2.Rarity
  L4_2 = L1_1.Epic
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rarity_hint_common
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._slot_data
  L3_2 = L3_2.MaxRarity
  L4_2 = L1_1.Common
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rarity_hint_rare
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._slot_data
  L3_2 = L3_2.MaxRarity
  L4_2 = L1_1.Rare
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.rarity_hint_epic
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._slot_data
  L3_2 = L3_2.MaxRarity
  L4_2 = L1_1.Epic
  L3_2 = L3_2 == L4_2
  L1_2(L2_2, L3_2)
end
L0_1._setup_rarity_bg = L2_1
function L2_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_listener = A2_2
end
L0_1.register_click_callback = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.root_btn
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_checked = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._click_callback
  if L1_2 then
    L1_2 = A0_2._click_listener
    if L1_2 then
      L1_2 = A0_2._click_callback
      L2_2 = A0_2._click_listener
      L3_2 = A0_2
      L4_2 = A0_2._slot_data
      L5_2 = A0_2._index
      L1_2(L2_2, L3_2, L4_2, L5_2)
    end
  end
end
L0_1._on_root_btn_clicked = L2_1
return L0_1
