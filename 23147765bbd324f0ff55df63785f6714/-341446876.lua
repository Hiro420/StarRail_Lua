local L0_1, L1_1, L2_1, L3_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.Shop.RogueConsumeMiraclePageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Rogue.Finish.RogueMiracleIconPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.CommonComponents.RogueEndlessShopMiracleIconPanelBinder"
L0_1(L1_1)
L0_1 = CS
L0_1 = L0_1.RPG
L0_1 = L0_1.Client
L0_1 = L0_1.GlobalVars
L0_1 = L0_1.s_ModuleManager
L0_1 = L0_1.RogueModule
L1_1 = G
L1_1 = L1_1.Class
L2_1 = "RogueConsumeMiraclePage"
L3_1 = G
L3_1 = L3_1.UIController
L1_1 = L1_1(L2_1, L3_1)
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueConsumeMiraclePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  A0_2._selected_miracle_id = 0
  A0_2._selected_miracle_index = 0
  L1_2 = {}
  A0_2._miracle_datas = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L1_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2.exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_consume
  L4_2 = A0_2._on_btn_consume
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_grid_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_miracle_changed
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_grid_view
  L1_2.IsAutoFadeIn = false
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.GetRogueBuffByExchange
  L4_2 = A0_2._on_get_rogue_buff_by_exchange
  L1_2(L2_2, L3_2, L4_2)
end
L1_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh_data
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_selected_miracle_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_total_miracle_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_navigation
  L1_2(L2_2)
end
L1_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = L0_1
  L3_2 = L2_2
  L2_2 = L2_2.GetRogueData
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.MiracleInfo
  L2_2 = L2_2.AchivedMiracles
  L1_2 = L1_2(L2_2)
  A0_2._miracle_datas = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._contain_miracle_id
  L3_2 = A0_2._selected_miracle_id
  L1_2 = L1_2(L2_2, L3_2)
  if not L1_2 then
    L1_2 = A0_2._miracle_datas
    L1_2 = #L1_2
    if L1_2 == 0 then
      A0_2._selected_miracle_index = 0
      A0_2._selected_miracle_id = 0
    else
      L1_2 = A0_2._selected_miracle_index
      if not (L1_2 <= 0) then
        L1_2 = A0_2._selected_miracle_index
        L2_2 = A0_2._miracle_datas
        L2_2 = #L2_2
        if not (L1_2 > L2_2) then
          goto lbl_32
        end
      end
      A0_2._selected_miracle_index = 1
      ::lbl_32::
      L1_2 = A0_2._miracle_datas
      L2_2 = A0_2._selected_miracle_index
      L1_2 = L1_2[L2_2]
      L1_2 = L1_2.MiracleID
      A0_2._selected_miracle_id = L1_2
    end
  end
end
L1_1._refresh_data = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L3_2 = A0_2
  L2_2 = A0_2._get_miracle_id_index
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L2_2 = 0 < L2_2
  return L2_2
end
L1_1._contain_miracle_id = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  if A1_2 == 0 or A1_2 == nil then
    L2_2 = 0
    return L2_2
  end
  L2_2 = ipairs
  L3_2 = A0_2._miracle_datas
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    L7_2 = L6_2.MiracleID
    if L7_2 == A1_2 then
      return L5_2
    end
  end
  L2_2 = 0
  return L2_2
end
L1_1._get_miracle_id_index = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.GetRogueMiracleDisplayByMiracleID
  L2_2 = A0_2._selected_miracle_id
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L3_2 = A0_2
  L2_2 = A0_2.load_sprite_to
  L4_2 = A0_2._binder
  L4_2 = L4_2.img_icon
  L5_2 = L1_2.MiracleFigureIconPath
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_name
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.MiracleName
  L2_2(L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.txt_desc
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetTextID
  L4_2 = L1_2.MiracleDesc
  L5_2 = G
  L5_2 = L5_2.UITextUtils
  L5_2 = L5_2.GetSkillParams
  L6_2 = L1_2.DescParamList
  L5_2, L6_2 = L5_2(L6_2)
  L2_2(L3_2, L4_2, L5_2, L6_2)
  L2_2 = L1_2.MiracleBGDesc
  L3_2 = L2_2 ~= nil
  L4_2 = A0_2._binder
  L4_2 = L4_2.txt_story
  L4_2 = L4_2.transform
  L5_2 = L4_2
  L4_2 = L4_2.SafeSetActive
  L6_2 = L3_2
  L4_2(L5_2, L6_2)
  if L3_2 then
    L4_2 = A0_2._binder
    L4_2 = L4_2.txt_story
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
end
L1_1._setup_selected_miracle_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_grid_view
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._miracle_datas
  L3_2 = #L3_2
  L4_2 = false
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.loop_grid_view
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L1_1._setup_total_miracle_view = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RogueMiracleIconPanel
    L8_2 = G
    L8_2 = L8_2.RogueEndlessShopMiracleIconPanelBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
    L6_2 = L4_2
    L5_2 = L4_2.register_click_callback
    L7_2 = A0_2._on_miracle_clicked
    L8_2 = A0_2
    L5_2(L6_2, L7_2, L8_2)
  end
  L5_2 = A0_2._miracle_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L5_2 = L5_2.MiracleID
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_checked
  L8_2 = A0_2._selected_miracle_id
  L8_2 = L5_2 == L8_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L1_1._on_miracle_changed = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2._selected_miracle_id
  L2_2 = L2_2 ~= A1_2
  if not L2_2 then
    return
  end
  A0_2._selected_miracle_id = A1_2
  L4_2 = A0_2
  L3_2 = A0_2._get_miracle_id_index
  L5_2 = A0_2._selected_miracle_id
  L3_2 = L3_2(L4_2, L5_2)
  A0_2._selected_miracle_index = L3_2
  L4_2 = A0_2
  L3_2 = A0_2._setup_selected_miracle_view
  L3_2(L4_2)
  L4_2 = A0_2
  L3_2 = A0_2._setup_total_miracle_view
  L3_2(L4_2)
end
L1_1._on_miracle_clicked = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2._refresh_data
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_selected_miracle_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_total_miracle_view
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2.force_set_first_navigation_target
  L2_2(L3_2)
  L2_2 = G
  L2_2 = L2_2.UIManager
  L2_2 = L2_2.load_and_async_show
  L3_2 = "Ui.Rogue.Buff.RogueBuffGetDialog"
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  L3_2 = L2_2.LuaTable
  L4_2 = L3_2
  L3_2 = L3_2.set_exit_callback
  function L5_2()
    local L0_3, L1_3
  end
  L3_2(L4_2, L5_2)
end
L1_1._on_get_rogue_buff_by_exchange = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueStatic
  L1_2 = L1_2.GetRogueMiracleDisplayByMiracleID
  L2_2 = A0_2._selected_miracle_id
  L1_2 = L1_2(L2_2)
  L2_2 = G
  L2_2 = L2_2.TextmapStatic
  L2_2 = L2_2.GetText
  L3_2 = L1_2.MiracleName
  L2_2 = L2_2(L3_2)
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ConfirmDialogUtil
  L3_2 = L3_2.ShowOkCancelHint
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextID
  L4_2 = L4_2.empty
  L5_2 = CS
  L5_2 = L5_2.RPG
  L5_2 = L5_2.Client
  L5_2 = L5_2.TextID
  L5_2 = L5_2.empty
  function L6_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._do_consume
      L1_3(L2_3)
    end
  end
  L3_2 = L3_2(L4_2, L5_2, L6_2)
  L5_2 = L3_2
  L4_2 = L3_2.SetContent
  L6_2 = "UIText_ActivityRogueEndless_MiracleShop_AGN_Tips"
  L7_2 = L2_2
  L4_2(L5_2, L6_2, L7_2)
end
L1_1._on_btn_consume = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_DialogueManager
  L2_2 = L1_2
  L1_2 = L1_2.GetCurTalkEntityServerEntityID
  L1_2 = L1_2(L2_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.NetworkManager
  L2_2 = L2_2.FFOMLPONIFB
  L3_2 = L2_2
  L2_2 = L2_2.AFIJCCGMLCH
  L4_2 = A0_2._selected_miracle_id
  L5_2 = L1_2
  L2_2(L3_2, L4_2, L5_2)
end
L1_1._do_consume = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeAfterFrames
  L2_2 = 2
  function L3_2()
    local L0_3, L1_3, L2_3
    L0_3 = A0_2
    L1_3 = L0_3
    L0_3 = L0_3._on_enter_zoom
    L2_3 = NavigationZoneType
    L2_3 = L2_3.Zone1
    L0_3(L1_3, L2_3)
  end
  L1_2(L2_2, L3_2)
end
L1_1._init_navigation = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = math
  L1_2 = L1_2.max
  L2_2 = A0_2._selected_miracle_index
  L2_2 = L2_2 - 1
  L3_2 = 0
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.loop_grid_view
  L3_2 = L2_2
  L2_2 = L2_2.GetShownItemByItemIndex
  L4_2 = L1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.UserObjectData
    if L3_2 ~= nil then
      goto lbl_19
    end
  end
  L3_2 = nil
  do return L3_2 end
  ::lbl_19::
  L3_2 = L2_2.UserObjectData
  L4_2 = L3_2
  L3_2 = L3_2.get_first_selected_object
  return L3_2(L4_2)
end
L1_1.get_first_selected_object = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L3_2 = A0_2
  L2_2 = A0_2.get_zoom_navigation_target
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    L4_2 = A0_2
    L3_2 = A0_2.get_first_selected_object
    L3_2 = L3_2(L4_2)
    L2_2 = L3_2
  end
  L4_2 = A0_2
  L3_2 = A0_2.set_navigation_target
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
end
L1_1._on_enter_zoom = L2_1
return L1_1
