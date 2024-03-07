local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Utilities.RelicUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Relic.AvatarRelicContainerBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "AvatarRelicContainer"
L2_1 = G
L2_1 = L2_1.BasePanel
L0_1 = L0_1(L1_1, L2_1)
L1_1 = 5013
L2_1 = "AvatarRelic_Suit4"
L3_1 = "AvatarRelic_PlanarSuitActive"
function L4_1(A0_2, A1_2, A2_2, A3_2, A4_2)
  local L5_2, L6_2
  A0_2._play_active_anim = A2_2
  A0_2._play_install_anim = A3_2
  A0_2._force_play_active_anim = A4_2
  A0_2._avatar_data = A1_2
  L6_2 = A0_2
  L5_2 = A0_2._refresh
  L5_2(L6_2)
end
L0_1.setup_view = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.relic_list
  L1_2 = L1_2[1]
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L4_1
function L4_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_relic_list
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_node
  L1_2(L2_2)
end
L0_1._refresh = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = 1
  L2_2 = 6
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = G
    L5_2 = L5_2.Utils
    L5_2 = L5_2.enum_from_int_str
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.GameCore
    L6_2 = L6_2.RelicType
    L7_2 = L4_2
    L5_2 = L5_2(L6_2, L7_2)
    L6_2 = G
    L6_2 = L6_2.RelicUtils
    L6_2 = L6_2.get_relic_from_avatar
    L7_2 = L5_2
    L8_2 = A0_2._avatar_data
    L6_2 = L6_2(L7_2, L8_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.relic_list
    L7_2 = L7_2[L4_2]
    L8_2 = L7_2
    L7_2 = L7_2.set_display_add_when_empty
    L9_2 = A0_2._avatar_data
    L9_2 = L9_2.IsDisplayOnly
    L9_2 = not L9_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.relic_list
    L7_2 = L7_2[L4_2]
    L8_2 = L7_2
    L7_2 = L7_2.show_rarity_bg
    L9_2 = false
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.relic_list
    L7_2 = L7_2[L4_2]
    L8_2 = L7_2
    L7_2 = L7_2.enable_install_anim
    L9_2 = A0_2._play_install_anim
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.relic_list
    L7_2 = L7_2[L4_2]
    L8_2 = L7_2
    L7_2 = L7_2.setup_view
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.relic_list
    L7_2 = L7_2[L4_2]
    L8_2 = L7_2
    L7_2 = L7_2.show_level
    L9_2 = true
    L7_2(L8_2, L9_2)
    L7_2 = A0_2._binder
    L7_2 = L7_2.relic_list
    L7_2 = L7_2[L4_2]
    L8_2 = L7_2
    L7_2 = L7_2.init_click_callback
    L9_2 = A0_2._avatar_data
    L10_2 = L5_2
    L7_2(L8_2, L9_2, L10_2)
    L8_2 = A0_2
    L7_2 = A0_2._should_play_unlock_anim
    L9_2 = L5_2
    L7_2 = L7_2(L8_2, L9_2)
    if L7_2 then
      L7_2 = A0_2._binder
      L7_2 = L7_2.relic_list
      L7_2 = L7_2[L4_2]
      L8_2 = L7_2
      L7_2 = L7_2.play_unlock_anim
      L7_2(L8_2)
    else
      L7_2 = A0_2._binder
      L7_2 = L7_2.relic_list
      L7_2 = L7_2[L4_2]
      L8_2 = L7_2
      L7_2 = L7_2.set_lock
      L9_2 = G
      L9_2 = L9_2.RelicUtils
      L9_2 = L9_2.is_relic_type_unlock
      L10_2 = L5_2
      L9_2 = L9_2(L10_2)
      L9_2 = not L9_2
      L7_2(L8_2, L9_2)
    end
  end
end
L0_1._refresh_relic_list = L4_1
function L4_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = G
  L2_2 = L2_2.RelicUtils
  L2_2 = L2_2.is_planar_suit
  L3_2 = A1_2
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.TutorialManager
    L3_2 = L2_2
    L2_2 = L2_2.get_running_tutorial_id
    L2_2 = L2_2(L3_2)
    L3_2 = L1_1
    L2_2 = L2_2 == L3_2
  end
  return L2_2
end
L0_1._should_play_unlock_anim = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_plana_unlock
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = G
  L3_2 = L3_2.RelicUtils
  L3_2 = L3_2.is_relic_two_set_unlock
  L3_2, L4_2, L5_2 = L3_2()
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_suit_active
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_planar_suit
  L5_2 = A0_2
  L4_2 = A0_2._is_set_2_active
  L4_2 = L4_2(L5_2)
  L5_2 = true
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_suit_active
  L3_2 = A0_2._binder
  L3_2 = L3_2.anim_suit
  L5_2 = A0_2
  L4_2 = A0_2._is_set_4_active
  L4_2 = L4_2(L5_2)
  L5_2 = false
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._refresh_node = L4_1
function L4_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2.gameObject
  L4_2 = L4_2.lightWeightDeactivate
  L4_2 = L4_2 == A2_2
  L6_2 = A1_2
  L5_2 = A1_2.SafeSetLightWeightActive
  L7_2 = A2_2
  L5_2(L6_2, L7_2)
  L5_2 = A0_2._play_active_anim
  if L5_2 and A2_2 then
    if not L4_2 then
      L5_2 = A0_2._force_play_active_anim
      if not L5_2 then
        goto lbl_34
      end
    end
    if A3_2 then
      L5_2 = L3_1
      if L5_2 then
        goto lbl_26
      end
    end
    L5_2 = L2_1
    ::lbl_26::
    L6_2 = CS
    L6_2 = L6_2.RPG
    L6_2 = L6_2.Client
    L6_2 = L6_2.UIAnimationUtils
    L6_2 = L6_2.PlayFromBegin
    L7_2 = A1_2
    L8_2 = L5_2
    L6_2(L7_2, L8_2)
  end
  ::lbl_34::
end
L0_1._set_suit_active = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = A0_2._avatar_data
  L2_2 = L1_2
  L1_2 = L1_2.GetRelicList
  L1_2 = L1_2(L2_2)
  L2_2 = {}
  L3_2 = 0
  L4_2 = L1_2.Count
  L4_2 = L4_2 - 1
  L5_2 = 1
  for L6_2 = L3_2, L4_2, L5_2 do
    L7_2 = L1_2[L6_2]
    L8_2 = G
    L8_2 = L8_2.RelicUtils
    L8_2 = L8_2.is_planar_suit
    L9_2 = L7_2.RelicRow
    L9_2 = L9_2.Type
    L8_2 = L8_2(L9_2)
    if L8_2 then
      L8_2 = #L2_2
      L8_2 = L8_2 + 1
      L9_2 = L7_2.RelicRow
      L9_2 = L9_2.Type
      L2_2[L8_2] = L9_2
    end
  end
  return L2_2
end
L0_1._get_active_planar_types = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._avatar_data
  L2_2 = L1_2
  L1_2 = L1_2.GetRelicList
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = nil
  L4_2 = 0
  L5_2 = L1_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2[L7_2]
    L9_2 = G
    L9_2 = L9_2.RelicUtils
    L9_2 = L9_2.is_planar_suit
    L10_2 = L8_2.RelicRow
    L10_2 = L10_2.Type
    L9_2 = L9_2(L10_2)
    if L9_2 then
      if L3_2 == nil then
        L9_2 = L8_2.RelicRow
        L3_2 = L9_2.SetID
      else
        L9_2 = L8_2.RelicRow
        L9_2 = L9_2.SetID
        if L3_2 ~= L9_2 then
          L9_2 = false
          return L9_2
        end
      end
      L2_2 = L2_2 + 1
    end
  end
  L4_2 = 2 <= L2_2
  return L4_2
end
L0_1._is_set_2_active = L4_1
function L4_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._avatar_data
  L2_2 = L1_2
  L1_2 = L1_2.GetRelicList
  L1_2 = L1_2(L2_2)
  L2_2 = 0
  L3_2 = nil
  L4_2 = 0
  L5_2 = L1_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L1_2[L7_2]
    L9_2 = G
    L9_2 = L9_2.RelicUtils
    L9_2 = L9_2.is_planar_suit
    L10_2 = L8_2.RelicRow
    L10_2 = L10_2.Type
    L9_2 = L9_2(L10_2)
    if not L9_2 then
      if L3_2 == nil then
        L9_2 = L8_2.RelicRow
        L3_2 = L9_2.SetID
      else
        L9_2 = L8_2.RelicRow
        L9_2 = L9_2.SetID
        if L3_2 ~= L9_2 then
          L9_2 = false
          return L9_2
        end
      end
      L2_2 = L2_2 + 1
    end
  end
  L4_2 = 4 <= L2_2
  return L4_2
end
L0_1._is_set_4_active = L4_1
return L0_1
