local L0_1, L1_1, L2_1, L3_1
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MuseumMapAreaPanel"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = "UIText_Activity_Museum_MapPage_AreaLocked"
L2_1 = "BtnMapArea_Unlock"
function L3_1(A0_2)
  local L1_2
end
L0_1.ctor = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._on_load = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_effect
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = false
  L2_2(L3_2, L4_2)
end
L0_1._on_owner_active_change = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.Play
  L3_2 = L2_1
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.anim_root
  L2_2 = L1_2
  L1_2 = L1_2.GetClip
  L3_2 = L2_1
  L1_2 = L1_2(L2_2, L3_2)
  L1_2 = L1_2.length
  L3_2 = A0_2
  L2_2 = A0_2.show_full_screen_block
  L4_2 = L1_2
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L0_1.play_unlock_anim = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._listener = A2_2
  A0_2._callback = A1_2
end
L0_1.set_btn_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._museum_area_data
  L2_2 = L2_2.IsLock
  if L2_2 then
    return
  end
  A0_2._is_selected = A1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.btn_root
  L3_2 = L2_2
  L2_2 = L2_2.SetChecked
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1.set_selected = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._museum_area_data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L0_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_id
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = "0"
  L4_2 = A0_2._museum_area_data
  L4_2 = L4_2.ID
  L3_2 = L3_2 .. L4_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.MuseumAreaName
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_first_world
  L2_2 = L1_2
  L1_2 = L1_2.SetCustomizedText
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.Row
  L3_2 = L3_2.FirstWorldText
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_lock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.IsLock
  if not L3_2 then
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L3_2 = L3_2.MuseumNewAreaUnlockHint
    L4_2 = A0_2._museum_area_data
    L4_2 = L4_2.ID
    L3_2 = L3_2 == L4_2
  end
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_cur_exhibit_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.ExhibitStuffsCount
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_max_exhibit_num
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._museum_area_data
  L3_2 = L3_2.ExhibitStuffsMaxCount
  L1_2(L2_2, L3_2)
end
L0_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._museum_area_data
  L1_2 = L1_2.IsLock
  if L1_2 then
    L1_2 = G
    L1_2 = L1_2.NotifyManager
    L1_2 = L1_2.notify
    L2_2 = G
    L2_2 = L2_2.CS
    L2_2 = L2_2.NotifyType
    L2_2 = L2_2.UIPileToastMessageTextID
    L3_2 = L1_1
    L1_2(L2_2, L3_2)
    return
  end
  L1_2 = A0_2._is_selected
  if L1_2 then
    return
  end
  L1_2 = A0_2._callback
  if L1_2 then
    L1_2 = A0_2._listener
    if L1_2 then
      L1_2 = A0_2._callback
      L2_2 = A0_2._listener
      L3_2 = A0_2._museum_area_data
      L3_2 = L3_2.ID
      L1_2(L2_2, L3_2)
    end
  end
end
L0_1._on_btn_click = L3_1
return L0_1
