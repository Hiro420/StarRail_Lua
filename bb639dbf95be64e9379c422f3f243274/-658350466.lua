local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RogueModule
L1_1 = "SpriteOutput/Rogue/Planet/PicRoguePlanetM"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "RogueSelectAreaItemPanel"
L4_1 = G
L4_1 = L4_1.BasePanel
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_root
  L4_2 = A0_2._on_btn_click
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2
  A0_2._click_callback = nil
  A0_2._click_callback_self = nil
end
L2_1._on_dispose = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.animator
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = not A1_2
  L2_2(L3_2, L4_2)
end
L2_1.set_empty = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2
  L3_2 = A0_2._is_selected
  L3_2 = L3_2 ~= A1_2
  if L3_2 or A2_2 then
    A0_2._is_selected = A1_2
    L5_2 = A0_2
    L4_2 = A0_2._refresh_select_status
    L4_2(L5_2)
  end
end
L2_1.set_selected = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Disabled_Off"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._is_selected
    if L2_2 then
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator
      L3_2 = L2_2
      L2_2 = L2_2.SetTrigger
      L4_2 = "Disabled_Select"
      L2_2(L3_2, L4_2)
    else
      L2_2 = A0_2._binder
      L2_2 = L2_2.animator
      L3_2 = L2_2
      L2_2 = L2_2.SetTrigger
      L4_2 = "Disabled"
      L2_2(L3_2, L4_2)
    end
  end
end
L2_1.set_enable = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Select"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Select_Off"
    L2_2(L3_2, L4_2)
  end
end
L2_1.set_detail_selected = L3_1
function L3_1(A0_2, A1_2, A2_2)
  A0_2._click_callback = A1_2
  A0_2._click_callback_self = A2_2
end
L2_1.register_click_callback = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._rogue_area_data_list = A1_2
  A0_2._rogue_area_data = nil
  L2_2 = A0_2._rogue_area_data_list
  if L2_2 ~= nil then
    L2_2 = A0_2._rogue_area_data_list
    L2_2 = L2_2.Count
    if 0 < L2_2 then
      L2_2 = A0_2._rogue_area_data_list
      L2_2 = L2_2[0]
      A0_2._rogue_area_data = L2_2
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
end
L2_1.setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_basic_info
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_status
  L1_2(L2_2)
end
L2_1._refresh = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._rogue_area_data
  if L1_2 ~= nil then
    L1_2 = A0_2._rogue_area_data
    L1_2 = L1_2.RogueAreaRow
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_name_lock
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.AreaNameID
    L2_2(L3_2, L4_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.text_name
    L3_2 = L2_2
    L2_2 = L2_2.SafeSetTextID
    L4_2 = L1_2.AreaNameID
    L2_2(L3_2, L4_2)
  end
end
L2_1._refresh_basic_info = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._rogue_area_data
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._rogue_area_data
  L1_2 = L1_2.RogueAreaStatus
  L1_2 = #L1_2
  L2_2 = G
  L2_2 = L2_2.UtilEngineWrap
  L2_2 = L2_2.ConvCsEnumToNum
  L3_2 = CS
  L3_2 = L3_2.AOLNJCNICEG
  L3_2 = L3_2.PALNCCGNNAH
  L2_2 = L2_2(L3_2)
  L2_2 = L1_2 == L2_2
  L3_2 = A0_2._is_lock
  L3_2 = L3_2 ~= L2_2
  A0_2._is_lock = L2_2
  L4_2 = false
  L5_2 = A0_2._is_lock
  if not L5_2 then
    L5_2 = 0
    L6_2 = A0_2._rogue_area_data_list
    L6_2 = L6_2.Count
    L6_2 = L6_2 - 1
    L7_2 = 1
    for L8_2 = L5_2, L6_2, L7_2 do
      L9_2 = A0_2._rogue_area_data_list
      L9_2 = L9_2[L8_2]
      L10_2 = L9_2.IsDoing
      if L10_2 == true then
        L4_2 = true
        break
      end
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.refresh_doing_status
  L7_2 = L4_2
  L5_2(L6_2, L7_2)
  L6_2 = A0_2
  L5_2 = A0_2._refresh_lock_status
  L5_2(L6_2)
end
L2_1._refresh_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_selected
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.ResetTrigger
    L3_2 = "Off"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "On"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.ResetTrigger
    L3_2 = "On"
    L1_2(L2_2, L3_2)
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "Off"
    L1_2(L2_2, L3_2)
  end
end
L2_1._refresh_select_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._is_lock
  if L1_2 then
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "Lock"
    L1_2(L2_2, L3_2)
  else
    L1_2 = A0_2._binder
    L1_2 = L1_2.animator
    L2_2 = L1_2
    L1_2 = L1_2.SetTrigger
    L3_2 = "Normal"
    L1_2(L2_2, L3_2)
  end
end
L2_1._refresh_lock_status = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_doing
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_doing_lock
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
  if A1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "Playing"
    L2_2(L3_2, L4_2)
  else
    L2_2 = A0_2._binder
    L2_2 = L2_2.animator
    L3_2 = L2_2
    L2_2 = L2_2.SetTrigger
    L4_2 = "NotPlay"
    L2_2(L3_2, L4_2)
  end
end
L2_1.refresh_doing_status = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.invoke_callback
  L2_2 = A0_2._click_callback
  L3_2 = A0_2._click_callback_self
  L4_2 = A0_2._rogue_area_data_list
  L1_2(L2_2, L3_2, L4_2)
end
L2_1._on_btn_click = L3_1
return L2_1
