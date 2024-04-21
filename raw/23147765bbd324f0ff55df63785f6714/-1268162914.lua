local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildShopPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildChallengeShopPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.EvolveBuild.EvolveBuildSkillCategoryList"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Battle.ActivityEvolveBuild.ActivityEvolveBuildUtils"
L0_1 = L0_1(L1_1)
L1_1 = require
L2_1 = "Ui.Activity.EvolveBuild.EvolveBuildConst"
L1_1 = L1_1(L2_1)
L2_1 = CS
L2_1 = L2_1.RPG
L2_1 = L2_1.Client
L2_1 = L2_1.GlobalVars
L2_1 = L2_1.s_ModuleManager
L2_1 = L2_1.EvolveBuildModule
L3_1 = G
L3_1 = L3_1.Utils
L3_1 = L3_1.create_lua_table_from_cs_array
L4_1 = G
L4_1 = L4_1.Class
L5_1 = "EvolveBuildShopPage"
L6_1 = G
L6_1 = L6_1.UIController
L4_1 = L4_1(L5_1, L6_1)
function L5_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_BelowBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L4_1.ctor = L5_1
function L5_1(A0_2, A1_2, A2_2, A3_2)
  local L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2, L12_2
  A0_2._stage = A1_2
  A0_2._weapon = A2_2
  A0_2._enter_battle_action = A3_2
  if A1_2 ~= nil and A2_2 ~= nil and A3_2 ~= nil then
    L5_2 = A0_2
    L4_2 = A0_2._create_binder
    L6_2 = G
    L6_2 = L6_2.EvolveBuildChallengeShopPageBinder
    L4_2 = L4_2(L5_2, L6_2)
    A0_2._binder = L4_2
    L4_2 = L2_1
    L5_2 = L4_2
    L4_2 = L4_2.RefreshSkillRecommendation
    L6_2 = A1_2
    L7_2 = A2_2
    L4_2(L5_2, L6_2, L7_2)
  else
    L5_2 = A0_2
    L4_2 = A0_2._create_binder
    L6_2 = G
    L6_2 = L6_2.EvolveBuildShopPageBinder
    L4_2 = L4_2(L5_2, L6_2)
    A0_2._binder = L4_2
    L4_2 = L2_1
    L5_2 = L4_2
    L4_2 = L4_2.ClearSkillRecommendation
    L4_2(L5_2)
  end
  L4_2 = {}
  A0_2._categories = L4_2
  L4_2 = {}
  A0_2._skill_lists = L4_2
  L4_2 = 0
  L5_2 = L2_1.Skills
  L5_2 = L5_2.Count
  L5_2 = L5_2 - 1
  L6_2 = 1
  for L7_2 = L4_2, L5_2, L6_2 do
    L8_2 = L2_1.Skills
    L8_2 = L8_2[L7_2]
    L9_2 = L8_2.IsAvailable
    if L9_2 then
      L9_2 = L8_2.Category
      L9_2 = L9_2.hash
      L10_2 = A0_2._skill_lists
      L10_2 = L10_2[L9_2]
      if L10_2 == nil then
        L10_2 = A0_2._skill_lists
        L11_2 = {}
        L10_2[L9_2] = L11_2
        L10_2 = table
        L10_2 = L10_2.insert
        L11_2 = A0_2._categories
        L12_2 = L9_2
        L10_2(L11_2, L12_2)
      end
      L10_2 = table
      L10_2 = L10_2.insert
      L11_2 = A0_2._skill_lists
      L11_2 = L11_2[L9_2]
      L12_2 = L8_2
      L10_2(L11_2, L12_2)
    end
  end
end
L4_1.init = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 1
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_exit_btn
  L3_2 = A0_2._binder
  L3_2 = L3_2.close_btn
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.summary_switch_btn
  L4_2 = A0_2._toggle_summary_display
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.level_up_btn
  L4_2 = A0_2._request_level_up
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.level_down_btn
  L4_2 = A0_2._request_level_down
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.reset_btn
  L4_2 = A0_2._request_level_reset
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._weapon
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.detail_panel_close_btn
    L4_2 = A0_2._close_detail_panel
    L1_2(L2_2, L3_2, L4_2)
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.detail_panel_open_btn
    L4_2 = A0_2._open_detail_panel
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIEvolveBuildSkillLevelUp
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIEvolveBuildSkillLevelDown
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.UIEvolveBuildSkillLevelReset
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_packet_handler
  L3_2 = CS
  L3_2 = L3_2.PBIBDHBOIGI
  L3_2 = L3_2.LNMCAEIEBMM
  L4_2 = A0_2._refresh
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.enter_battle_btn
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._bind_btn_callback
    L3_2 = A0_2._binder
    L3_2 = L3_2.enter_battle_btn
    L4_2 = A0_2._enter_battle
    L1_2(L2_2, L3_2, L4_2)
  end
end
L4_1._on_load = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.category_list
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitListView
  L3_2 = A0_2._categories
  L3_2 = #L3_2
  function L4_2(A0_3, A1_3, A2_3)
    local L3_3, L4_3, L5_3, L6_3, L7_3, L8_3, L9_3, L10_3, L11_3, L12_3, L13_3
    L4_3 = A1_3
    L3_3 = A1_3.NewListViewItem
    L3_3 = L3_3(L4_3)
    L4_3 = L3_3.UserObjectData
    if L4_3 == nil then
      L6_3 = A0_3
      L5_3 = A0_3.create_panel
      L7_3 = G
      L7_3 = L7_3.EvolveBuildSkillCategoryList
      L8_3 = G
      L8_3 = L8_3.EvolveBuildSkillCategoryListBinder
      L5_3 = L5_3(L6_3, L7_3, L8_3)
      L4_3 = L5_3
      L6_3 = L4_3
      L5_3 = L4_3.bind
      L7_3 = L3_3.transform
      L5_3(L6_3, L7_3)
      L3_3.UserObjectData = L4_3
    end
    L5_3 = A0_3._categories
    L6_3 = A2_3 + 1
    L5_3 = L5_3[L6_3]
    L6_3 = A0_3._skill_lists
    L6_3 = L6_3[L5_3]
    L8_3 = L4_3
    L7_3 = L4_3.setup_view
    L9_3 = L6_3[1]
    L9_3 = L9_3.Category
    L10_3 = L6_3
    L11_3 = A0_3._show_summary
    L12_3 = A0_3
    L13_3 = A0_3._set_selected_skill
    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    L7_3 = CS
    L7_3 = L7_3.UnityEngine
    L7_3 = L7_3.UI
    L7_3 = L7_3.LayoutRebuilder
    L7_3 = L7_3.ForceRebuildLayoutImmediate
    L8_3 = L3_3.transform
    L7_3(L8_3)
    L8_3 = L3_3
    L7_3 = L3_3.SetSubList
    L10_3 = L4_3
    L9_3 = L4_3.get_static_list
    L9_3, L10_3, L11_3, L12_3, L13_3 = L9_3(L10_3)
    L7_3(L8_3, L9_3, L10_3, L11_3, L12_3, L13_3)
    return L3_3
  end
  L5_2 = nil
  L6_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.category_list
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._categories
  L3_2 = #L3_2
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.category_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._set_selected_skill
  L3_2 = L2_1.Skills
  L3_2 = L3_2[0]
  L1_2(L2_2, L3_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_weapon_panel
  L3_2 = A0_2._weapon
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._stage
  if L1_2 ~= nil then
    L1_2 = A0_2._weapon
    if L1_2 ~= nil then
      L1_2 = A0_2._enter_battle_action
      if L1_2 ~= nil then
        L1_2 = G
        L1_2 = L1_2.NotifyManager
        L1_2 = L1_2.notify
        L2_2 = G
        L2_2 = L2_2.CS
        L2_2 = L2_2.NotifyType
        L2_2 = L2_2.TutorialTaskUnlock
        L3_2 = L1_1.SkillShopTutorialID
        L1_2(L2_2, L3_2)
      end
    end
  end
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L4_1._setup_view = L5_1
function L5_1(A0_2)
  local L1_2
end
L4_1._on_dispose = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  if A1_2 == L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.set_navigation_target
    L5_2 = A0_2
    L4_2 = A0_2.get_navigation_target
    L4_2, L5_2 = L4_2(L5_2)
    L2_2(L3_2, L4_2, L5_2)
  end
end
L4_1._on_enter_zoom = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.category_list
  L2_2 = L1_2
  L1_2 = L1_2.GetShownItemByIndex
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 then
    L2_2 = L1_2.UserObjectData
    L3_2 = L2_2
    L2_2 = L2_2.get_first_selected_object
    L2_2 = L2_2(L3_2)
    if L2_2 then
      goto lbl_14
    end
  end
  L2_2 = nil
  ::lbl_14::
  return L2_2
end
L4_1.get_first_selected_object = L5_1
function L5_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._close_detail_panel
  L1_2(L2_2)
end
L4_1._on_leave_special_zoom = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2.is_can_to_special_zoom
  L2_2 = L2_2(L3_2)
  if L2_2 then
    L3_2 = A0_2
    L2_2 = A0_2.is_in_special_zoom
    L2_2 = L2_2(L3_2)
    if not L2_2 then
      L2_2 = CS
      L2_2 = L2_2.InControl
      L2_2 = L2_2.InputControlType
      L2_2 = L2_2.LeftStickButton
      L2_2 = #L2_2
      if A1_2 == L2_2 then
        L2_2 = A0_2._weapon
        if L2_2 then
          L3_2 = A0_2
          L2_2 = A0_2._open_detail_panel
          L2_2(L3_2)
          L3_2 = A0_2
          L2_2 = A0_2.set_special_zoom_navigation_target
          L4_2 = A0_2._binder
          L4_2 = L4_2.detail_panel_open_btn
          L4_2 = L4_2.gameObject
          L2_2(L3_2, L4_2)
        end
      end
    end
  end
end
L4_1._on_in_control_click = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._selected_skill = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh
  L2_2(L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.category_list
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L4_1._set_selected_skill = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.top_bar_area
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = "EvolveBuildShopPage"
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._selected_skill
  L2_2 = A0_2._binder
  L2_2 = L2_2.skill_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.skill_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.Desc
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetSkillParams
  L6_2 = L1_2.DescParams
  L5_2, L6_2, L7_2, L8_2, L9_2, L10_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.skill_icon
  L5_2 = L1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.skill_bg
  L5_2 = L1_2.BgPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = L2_1.CoinNum
  L3_2 = L1_2.Level
  L4_2 = L1_2.MaxLevel
  L5_2 = L1_2.LevelUpPrice
  L6_2 = L1_2.LevelDownPrice
  L7_2 = A0_2._binder
  L7_2 = L7_2.level_up_price_container
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = L3_2 < L4_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.level_down_price_container
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetActive
  L9_2 = 0 < L3_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.level_up_price
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = "-"
  L10_2 = L5_2
  L9_2 = L9_2 .. L10_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.level_down_price
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetText
  L9_2 = "+"
  L10_2 = L6_2
  L9_2 = L9_2 .. L10_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.level_up_btn
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetInteractable
  L9_2 = L3_2 < L4_2 and L2_2 >= L5_2
  L7_2(L8_2, L9_2)
  L7_2 = A0_2._binder
  L7_2 = L7_2.level_down_btn
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetInteractable
  L9_2 = 0 < L3_2
  L7_2(L8_2, L9_2)
  if L2_2 < L5_2 then
    L7_2 = A0_2._binder
    L7_2 = L7_2.level_up_price
    L8_2 = L1_1.CoinNotEnoughColor
    L7_2.color = L8_2
  else
    L7_2 = A0_2._binder
    L7_2 = L7_2.level_up_price
    L8_2 = L1_1.CoinNormalColor
    L7_2.color = L8_2
  end
  L7_2 = A0_2._binder
  L7_2 = L7_2.reset_btn
  L8_2 = L7_2
  L7_2 = L7_2.SafeSetInteractable
  L10_2 = A0_2
  L9_2 = A0_2._can_reset
  L9_2, L10_2 = L9_2(L10_2)
  L7_2(L8_2, L9_2, L10_2)
  L8_2 = A0_2
  L7_2 = A0_2._setup_weapon_panel
  L9_2 = A0_2._weapon
  L7_2(L8_2, L9_2)
end
L4_1._refresh = L5_1
function L5_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.async_load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.weapon_icon
  L5_2 = A1_2.IconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.weapon_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = A1_2.Name
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.weapon_tag_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_view
  L4_2 = L3_1
  L5_2 = A1_2.TagIDs
  L4_2, L5_2, L6_2, L7_2 = L4_2(L5_2)
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
  L2_2 = L3_1
  L3_2 = A1_2.Elements
  L2_2 = L2_2(L3_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.weapon_element_list
  L4_2 = L3_2
  L3_2 = L3_2.safe_set_active
  L5_2 = L2_2 ~= nil
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.weapon_element_list
  L4_2 = L3_2
  L3_2 = L3_2.setup_view
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.random_element_tip
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L0_1.is_random_damage_gear
  L6_2 = A1_2.ID
  L5_2, L6_2, L7_2 = L5_2(L6_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
  L3_2 = A0_2._binder
  L3_2 = L3_2.weapon_level
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetTextID
  L5_2 = L1_1.WeaponLevelTextID
  L6_2 = L2_1
  L7_2 = L6_2
  L6_2 = L6_2.GetWeaponInitialLevel
  L6_2, L7_2 = L6_2(L7_2)
  L3_2(L4_2, L5_2, L6_2, L7_2)
end
L4_1._setup_weapon_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.RequestSkillLevelUp
  L3_2 = A0_2._selected_skill
  L3_2 = L3_2.ID
  L4_2 = A0_2._selected_skill
  L4_2 = L4_2.Level
  L4_2 = L4_2 + 1
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._request_level_up = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = L2_1
  L2_2 = L1_2
  L1_2 = L1_2.RequestSkillLevelDown
  L3_2 = A0_2._selected_skill
  L3_2 = L3_2.ID
  L4_2 = A0_2._selected_skill
  L4_2 = L4_2.Level
  L4_2 = L4_2 - 1
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._request_level_down = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.ConfirmDialogUtil
  L1_2 = L1_2.ShowOkCancelHint
  L2_2 = "UIText_EvolveBuild_StoreResetConfirm"
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.TextID
  L3_2 = L3_2.empty
  function L4_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = L2_1
      L2_3 = L1_3
      L1_3 = L1_3.RequestSkillLevelReset
      L1_3(L2_3)
    end
  end
  L1_2(L2_2, L3_2, L4_2)
end
L4_1._request_level_reset = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._show_summary
  L1_2 = not L1_2
  A0_2._show_summary = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.summary_switch_btn
  L2_2 = L1_2
  L1_2 = L1_2.SetChecked
  L3_2 = A0_2._show_summary
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.category_list
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L4_1._toggle_summary_display = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = 0
  L2_2 = L2_1.Skills
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L5_2 = L2_1.Skills
    L5_2 = L5_2[L4_2]
    L6_2 = L5_2.Level
    if 0 < L6_2 then
      L6_2 = true
      return L6_2
    end
  end
  L1_2 = false
  return L1_2
end
L4_1._can_reset = L5_1
function L5_1(A0_2)
  local L1_2
  L1_2 = A0_2._enter_battle_action
  if L1_2 ~= nil then
    L1_2 = A0_2._enter_battle_action
    L1_2()
  end
end
L4_1._enter_battle = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_panel
  if L1_2 == nil then
    return
  end
  L1_2 = A0_2._binder
  L1_2 = L1_2.detail_panel
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
end
L4_1._close_detail_panel = L5_1
function L5_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = A0_2._weapon
  L2_2 = A0_2._binder
  L2_2 = L2_2.detail_panel
  if L2_2 == nil or L1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.detail_panel
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = true
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.EvolveBuildUtils
  L2_2 = L2_2.SetMazeBuffDesc
  L3_2 = A0_2._binder
  L3_2 = L3_2.weapon_desc
  L4_2 = L1_2.MazeBuff
  L5_2 = false
  L6_2 = false
  L2_2(L3_2, L4_2, L5_2, L6_2)
end
L4_1._open_detail_panel = L5_1
return L4_1
