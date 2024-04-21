local L0_1, L1_1, L2_1, L3_1, L4_1, L5_1, L6_1, L7_1, L8_1, L9_1, L10_1
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.ActivityMain.RogueEndlessStartPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.RogueDLC.RogueEndless.RogueEndlessUtils"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Avatar.RogueTeamInfoProvider"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "RogueEndlessStartPage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.RogueModule
L2_1 = "UIText_Rogue_Init_Avatar_Title"
L3_1 = "UIText_Rogue_Init_Avatar_Btn_Confirm"
L4_1 = "UIText_Rogue_Init_Avatar_Tip_Confirm"
L5_1 = "UIText_Rogue_Start_Tip1"
L6_1 = "UIText_Rogue_Start_Tip2"
L7_1 = "UIText_ActivityRogueEndless_Miracle_Name_1"
L8_1 = "UIText_ActivityRogueEndless_Miracle_Name_2"
L9_1 = "SpriteOutput/Rogue/Tab/GenreBuffIcon.png"
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.RogueEndlessStartPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = {}
  A0_2._selected_avatars = L1_2
  L1_2 = {}
  A0_2._miracle_ids = L1_2
  L1_2 = {}
  A0_2._buff_datas = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._data = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._try_recover_rogue_team
  L2_2(L3_2)
end
L0_1.init = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L2_2 = A0_2
  L1_2 = A0_2._get_team_record
  L1_2 = L1_2(L2_2)
  if L1_2 == nil then
    return
  end
  L2_2 = 0
  L3_2 = L1_2.Count
  L3_2 = L3_2 - 1
  L4_2 = 1
  for L5_2 = L2_2, L3_2, L4_2 do
    L6_2 = L1_2[L5_2]
    L7_2 = CS
    L7_2 = L7_2.RPG
    L7_2 = L7_2.Client
    L7_2 = L7_2.GlobalVars
    L7_2 = L7_2.s_ModuleManager
    L7_2 = L7_2.AvatarModule
    L8_2 = L7_2
    L7_2 = L7_2.GetAvatar
    L9_2 = L6_2
    L7_2 = L7_2(L8_2, L9_2)
    L8_2 = table
    L8_2 = L8_2.insert
    L9_2 = A0_2._selected_avatars
    L10_2 = L7_2
    L8_2(L9_2, L10_2)
  end
end
L0_1._try_recover_rogue_team = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.RogueFinish
  L4_2 = A0_2._on_rogue_finish
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.TutorialMoveScrollView
  L4_2 = L0_1._on_tutorial_move_page
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_close
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_confirm
  L4_2 = A0_2._on_btn_confirm
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_avatar_detail
  L4_2 = A0_2._on_btn_avatar_detail
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_monster_preview
  L4_2 = A0_2._on_btn_monster_preview
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_miracle
  L4_2 = A0_2._on_miracle_clicked
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_buff
  L4_2 = A0_2._on_buff_clicked
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.register_selection_callback
  L3_2 = A0_2._on_selected_avatar_changed
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_miracle
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_miracle_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_buff
  L2_2 = L1_2
  L1_2 = L1_2.init
  L3_2 = A0_2
  L4_2 = 0
  L5_2 = A0_2._on_buff_item_changed
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
end
L0_1._on_load = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.refresh_view
  L1_2(L2_2)
end
L0_1._on_return_to_top = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_info_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_effect_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_buff_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_miracle_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_select_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_team_view
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.TutorialTaskUnlock
  L3_2 = string
  L3_2 = L3_2.format
  L4_2 = "RogueEndless_StartArea_%s"
  L5_2 = A0_2._data
  L5_2 = L5_2.AreaID
  L3_2, L4_2, L5_2 = L3_2(L4_2, L5_2)
  L1_2(L2_2, L3_2, L4_2, L5_2)
end
L0_1._setup_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_name
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Name
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = A0_2._data
  L3_2 = L3_2.Desc
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_recommend_level
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetText
  L3_2 = A0_2._data
  L3_2 = L3_2.RecommendLevel
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_recommend_type
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_array
  L4_2 = A0_2._data
  L4_2 = L4_2.RecommendTypes
  L3_2, L4_2 = L3_2(L4_2)
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._setup_info_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._data
  L2_2 = L2_2.MechanismTexts
  L1_2 = L1_2(L2_2)
  A0_2._mechanism_texts = L1_2
  L1_2 = A0_2._mechanism_texts
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_mechanism
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = ipairs
    L3_2 = A0_2._binder
    L3_2 = L3_2.node_mechanism_items
    L2_2, L3_2, L4_2 = L2_2(L3_2)
    for L5_2, L6_2 in L2_2, L3_2, L4_2 do
      L7_2 = A0_2._mechanism_texts
      L7_2 = #L7_2
      L7_2 = L5_2 <= L7_2
      L9_2 = L6_2
      L8_2 = L6_2.SafeSetActive
      L10_2 = L7_2
      L8_2(L9_2, L10_2)
      if L7_2 then
        L8_2 = A0_2._binder
        L8_2 = L8_2.txt_mechanism_items
        L8_2 = L8_2[L5_2]
        L9_2 = L8_2
        L8_2 = L8_2.SetCustomizedText
        L10_2 = A0_2._mechanism_texts
        L10_2 = L10_2[L5_2]
        L8_2(L9_2, L10_2)
      end
    end
  end
end
L0_1._setup_effect_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._show_fake_buff
  L1_2 = L1_2(L2_2)
  if L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2._setup_fake_buff_view
    L1_2(L2_2)
  else
    L2_2 = A0_2
    L1_2 = A0_2._setup_normal_buff_view
    L1_2(L2_2)
  end
end
L0_1._setup_buff_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = G
  L1_2 = L1_2.RogueEndlessUtils
  L1_2 = L1_2.has_mega_buff
  L2_2 = A0_2._data
  L2_2 = L2_2.AreaID
  return L1_2(L2_2)
end
L0_1._show_fake_buff = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "RogueEndless_Activity_MegaBuff_Numb"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.UintValue
  A0_2._buff_4_count = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.ConstValueClientExcelTable
  L1_2 = L1_2.GetData
  L2_2 = "RogueEndless_Activity_Buff_Numb"
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2.Value
  L1_2 = L1_2.UintValue
  A0_2._buff_3_count = L1_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.node_buff
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_buff_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = true
  L1_2(L2_2, L3_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_buff_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetTextID
  L3_2 = "UIText_ActivityRogueEndless_Miracle_Des"
  L4_2 = A0_2._buff_4_count
  L5_2 = A0_2._buff_3_count
  L1_2(L2_2, L3_2, L4_2, L5_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_buff
  L2_2 = L1_2
  L1_2 = L1_2.SetListItemCount
  L3_2 = A0_2._buff_4_count
  L4_2 = A0_2._buff_3_count
  L3_2 = L3_2 + L4_2
  L4_2 = true
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.list_buff
  L2_2 = L1_2
  L1_2 = L1_2.RefreshAllShownItem
  L1_2(L2_2)
end
L0_1._setup_fake_buff_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.txt_buff_desc
  L2_2 = L1_2
  L1_2 = L1_2.SafeSetActive
  L3_2 = false
  L1_2(L2_2, L3_2)
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_list
  L2_2 = A0_2._data
  L2_2 = L2_2.FreeBuffDatas
  L1_2 = L1_2(L2_2)
  A0_2._buff_datas = L1_2
  L1_2 = A0_2._buff_datas
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_buff
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_buff
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._buff_datas
    L4_2 = #L4_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_buff
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
  end
end
L0_1._setup_normal_buff_view = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A0_2
  L3_2 = A0_2._show_fake_buff
  L3_2 = L3_2(L4_2)
  if L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._on_fake_buff_item_changed
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  else
    L4_2 = A0_2
    L3_2 = A0_2._on_normal_buff_item_changed
    L5_2 = A1_2
    L6_2 = A2_2
    return L3_2(L4_2, L5_2, L6_2)
  end
end
L0_1._on_buff_item_changed = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_28
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RogueEndlessBuffIconPanel
  L8_2 = G
  L8_2 = L8_2.RogueEndlessBuffIconPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  L6_2 = L4_2
  L5_2 = L4_2.set_interactable
  L7_2 = true
  L5_2(L6_2, L7_2)
  L6_2 = L4_2
  L5_2 = L4_2.register_click_callback
  L7_2 = A0_2._on_buff_clicked
  L8_2 = A0_2
  L5_2(L6_2, L7_2, L8_2)
  ::lbl_28::
  L5_2 = A2_2 + 1
  L6_2 = A0_2._buff_4_count
  if L5_2 <= L6_2 then
    L6_2 = L4_2
    L5_2 = L4_2.setup_fake_view
    L7_2 = L7_1
    L8_2 = L9_1
    L9_2 = 4
    L10_2 = A2_2 + 1
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  else
    L6_2 = L4_2
    L5_2 = L4_2.setup_fake_view
    L7_2 = L8_1
    L8_2 = L9_1
    L9_2 = 3
    L10_2 = A2_2 + 1
    L5_2(L6_2, L7_2, L8_2, L9_2, L10_2)
  end
  return L3_2
end
L0_1._on_fake_buff_item_changed = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 ~= nil then
    L5_2 = L4_2.is_destroyed
    if not L5_2 then
      goto lbl_24
    end
  end
  L6_2 = A0_2
  L5_2 = A0_2.create_panel
  L7_2 = G
  L7_2 = L7_2.RogueEndlessBuffIconPanel
  L8_2 = G
  L8_2 = L8_2.RogueEndlessBuffIconPanelBinder
  L5_2 = L5_2(L6_2, L7_2, L8_2)
  L4_2 = L5_2
  L6_2 = L4_2
  L5_2 = L4_2.bind
  L7_2 = L3_2.transform
  L5_2(L6_2, L7_2)
  L3_2.UserObjectData = L4_2
  L6_2 = L4_2
  L5_2 = L4_2.set_interactable
  L7_2 = false
  L5_2(L6_2, L7_2)
  ::lbl_24::
  L5_2 = A0_2._buff_datas
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_normal_buff_item_changed = L10_1
function L10_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L4_2 = A0_2
  L3_2 = A0_2._get_buff_ids
  L5_2 = "RogueEndless_Activity_MegaBuffList"
  L3_2 = L3_2(L4_2, L5_2)
  L5_2 = A0_2
  L4_2 = A0_2._get_buff_ids
  L6_2 = "RogueEndless_Activity_NormalBuffList"
  L4_2 = L4_2(L5_2, L6_2)
  if A2_2 ~= nil then
    L5_2 = A0_2._buff_4_count
    if not (A2_2 <= L5_2) then
      goto lbl_15
    end
  end
  L5_2 = 1
  ::lbl_15::
  if not L5_2 then
    L5_2 = 2
  end
  L6_2 = G
  L6_2 = L6_2.UIManager
  L6_2 = L6_2.load_and_async_show
  L7_2 = "Ui.RogueDLC.RogueEndless.ActivityMain.RogueEndlessDisplayBuffPage"
  L8_2 = {}
  L9_2 = L3_2
  L10_2 = L4_2
  L8_2[1] = L9_2
  L8_2[2] = L10_2
  L9_2 = {}
  L10_2 = 1
  L11_2 = 2
  L9_2[1] = L10_2
  L9_2[2] = L11_2
  L10_2 = L5_2
  L6_2(L7_2, L8_2, L9_2, L10_2)
end
L0_1._on_buff_clicked = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2, L11_2
  L2_2 = {}
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.GameCore
  L3_2 = L3_2.ConstValueClientExcelTable
  L3_2 = L3_2.GetData
  L4_2 = A1_2
  L3_2 = L3_2(L4_2)
  L3_2 = L3_2.Value
  L3_2 = L3_2.ArrayValue
  if L3_2 ~= nil then
    L4_2 = 0
    L5_2 = L3_2.Length
    L5_2 = L5_2 - 1
    L6_2 = 1
    for L7_2 = L4_2, L5_2, L6_2 do
      L8_2 = L3_2[L7_2]
      L8_2 = L8_2.UintValue
      L9_2 = table
      L9_2 = L9_2.insert
      L10_2 = L2_2
      L11_2 = L8_2
      L9_2(L10_2, L11_2)
    end
  end
  return L2_2
end
L0_1._get_buff_ids = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = G
  L1_2 = L1_2.Utils
  L1_2 = L1_2.create_lua_table_from_cs_array
  L2_2 = A0_2._data
  L2_2 = L2_2.FreeMiracleIDs
  L1_2 = L1_2(L2_2)
  A0_2._miracle_ids = L1_2
  L1_2 = A0_2._miracle_ids
  L1_2 = #L1_2
  L1_2 = 0 < L1_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.node_miracle
  L3_2 = L2_2
  L2_2 = L2_2.SafeSetActive
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  if L1_2 then
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_miracle
    L3_2 = L2_2
    L2_2 = L2_2.SetListItemCount
    L4_2 = A0_2._miracle_ids
    L4_2 = #L4_2
    L5_2 = true
    L2_2(L3_2, L4_2, L5_2)
    L2_2 = A0_2._binder
    L2_2 = L2_2.list_miracle
    L3_2 = L2_2
    L2_2 = L2_2.RefreshAllShownItem
    L2_2(L3_2)
  end
end
L0_1._setup_miracle_view = L10_1
function L10_1(A0_2, A1_2, A2_2)
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
    L8_2 = L8_2.RogueEndlessMiracleIconPanelBinder
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
    L4_2.auto_click = false
    L4_2.auto_save_navi = false
  end
  L5_2 = A0_2._miracle_ids
  L6_2 = A2_2 + 1
  L5_2 = L5_2[L6_2]
  L7_2 = L4_2
  L6_2 = L4_2.setup_view
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  return L3_2
end
L0_1._on_miracle_item_changed = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueEndless.ActivityMain.RogueEndlessDisplayMiraclePage"
  L3_2 = A0_2._miracle_ids
  L1_2(L2_2, L3_2)
end
L0_1._on_miracle_clicked = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.setup_view
  L1_2(L2_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.set_selected_avatars_from_record
  L3_2 = A0_2._selected_avatars
  L1_2(L2_2, L3_2)
end
L0_1._setup_select_view = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.RogueUtils
  L1_2 = L1_2.GetStartRogueAvatarMaxNumber
  L1_2 = L1_2()
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_team_avatar_list
  L3_2 = L2_2
  L2_2 = L2_2.setup_select_view
  L4_2 = L1_2
  L5_2 = A0_2._selected_avatars
  L6_2 = A0_2._on_team_avatar_clicked
  L7_2 = A0_2
  L2_2(L3_2, L4_2, L5_2, L6_2, L7_2)
end
L0_1._setup_team_view = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  A0_2._selected_avatars = A1_2
  L3_2 = A0_2
  L2_2 = A0_2._setup_team_view
  L2_2(L3_2)
end
L0_1._on_selected_avatar_changed = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  if A1_2 == nil then
    return
  end
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_select_avatar
  L3_2 = L2_2
  L2_2 = L2_2.try_click_avatar
  L4_2 = A1_2
  L2_2(L3_2, L4_2)
end
L0_1._on_team_avatar_clicked = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.scroll_rect
  L2_2 = L1_2
  L1_2 = L1_2.SetVerticalScrollPercent
  L3_2 = 0
  L1_2(L2_2, L3_2)
end
L0_1._on_tutorial_move_page = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.IsRogueEndlessArea
  L4_2 = A1_2.RogueAreaID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.RogueDLC.RogueEndless.Finish.RogueEndlessExploreFinishPage"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  else
    L2_2 = G
    L2_2 = L2_2.UIManager
    L2_2 = L2_2.load_and_show
    L3_2 = "Ui.Rogue.Finish.RogueExploreFinishPage"
    L4_2 = A1_2
    L2_2(L3_2, L4_2)
  end
end
L0_1._on_rogue_finish = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_close = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = G
  L1_2 = L1_2.new
  L2_2 = G
  L2_2 = L2_2.RogueTeamInfoProvider
  L3_2 = nil
  L4_2 = A0_2._selected_avatars
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.panel_select_avatar
  L3_2 = L2_2
  L2_2 = L2_2.get_show_first_avatar
  L2_2 = L2_2(L3_2)
  L3_2 = G
  L3_2 = L3_2.UIManager
  L3_2 = L3_2.load_and_async_show
  L4_2 = "Ui.Avatar.AvatarMainPage"
  L5_2 = nil
  L6_2 = nil
  L7_2 = L1_2
  L8_2 = L2_2
  L9_2 = true
  L3_2(L4_2, L5_2, L6_2, L7_2, L8_2, L9_2)
end
L0_1._on_btn_avatar_detail = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.UIManager
  L1_2 = L1_2.load_and_async_show
  L2_2 = "Ui.RogueDLC.RogueEndless.Monster.RogueEndlessMonsterPreviewDialog"
  L3_2 = A0_2._data
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_monster_preview = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = A0_2._selected_avatars
  if L1_2 == nil then
    L2_2 = A0_2
    L1_2 = A0_2._on_btn_confirm_empty_avatar
    L1_2(L2_2)
    return
  end
  L1_2 = 0
  L2_2 = 0
  L3_2 = pairs
  L4_2 = A0_2._selected_avatars
  L3_2, L4_2, L5_2 = L3_2(L4_2)
  for L6_2, L7_2 in L3_2, L4_2, L5_2 do
    if L7_2 ~= nil then
      L8_2 = L7_2.Level
      L1_2 = L1_2 + L8_2
      L2_2 = L2_2 + 1
    end
  end
  if L2_2 <= 0 then
    L4_2 = A0_2
    L3_2 = A0_2._on_btn_confirm_empty_avatar
    L3_2(L4_2)
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.RogueUtils
  L3_2 = L3_2.GetStartRogueAvatarMaxNumber
  L3_2 = L3_2()
  if L2_2 < L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._show_confirm_dialog_to_start_rogue
    L5_2 = L5_1
    L3_2(L4_2, L5_2)
    return
  end
  L3_2 = A0_2._data
  L3_2 = L3_2.RecommendLevel
  L3_2 = L3_2 * L2_2
  if L1_2 < L3_2 then
    L4_2 = A0_2
    L3_2 = A0_2._show_confirm_dialog_to_start_rogue
    L5_2 = L6_1
    L3_2(L4_2, L5_2)
    return
  end
  L4_2 = A0_2
  L3_2 = A0_2._start_rogue
  L3_2(L4_2)
end
L0_1._on_btn_confirm = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.NotifyManager
  L1_2 = L1_2.notify
  L2_2 = G
  L2_2 = L2_2.CS
  L2_2 = L2_2.NotifyType
  L2_2 = L2_2.UIPileToastMessageTextID
  L3_2 = L4_1
  L1_2(L2_2, L3_2)
end
L0_1._on_btn_confirm_empty_avatar = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.ConfirmDialogUtil
  L2_2 = L2_2.ShowOkCancelHint
  L3_2 = A1_2
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.TextID
  L4_2 = L4_2.empty
  function L5_2(A0_3)
    local L1_3, L2_3
    if A0_3 then
      L1_3 = A0_2
      L2_3 = L1_3
      L1_3 = L1_3._start_rogue
      L1_3(L2_3)
    end
  end
  L2_2(L3_2, L4_2, L5_2)
end
L0_1._show_confirm_dialog_to_start_rogue = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.System
  L1_2 = L1_2.Collections
  L1_2 = L1_2.Generic
  L1_2 = L1_2.List
  L2_2 = CS
  L2_2 = L2_2.System
  L2_2 = L2_2.UInt32
  L1_2 = L1_2(L2_2)
  L1_2 = L1_2()
  L2_2 = pairs
  L3_2 = A0_2._selected_avatars
  L2_2, L3_2, L4_2 = L2_2(L3_2)
  for L5_2, L6_2 in L2_2, L3_2, L4_2 do
    if L6_2 ~= nil then
      L8_2 = L1_2
      L7_2 = L1_2.Add
      L9_2 = L6_2.ID
      L7_2(L8_2, L9_2)
    end
  end
  L3_2 = A0_2
  L2_2 = A0_2._save_team_record
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetRogueData
  L2_2 = L2_2(L3_2)
  L4_2 = L2_2
  L3_2 = L2_2.GetSelectableAeonIDList
  L3_2 = L3_2(L4_2)
  if L3_2 ~= nil then
    L4_2 = L3_2.Count
    if 0 < L4_2 then
      L4_2 = G
      L4_2 = L4_2.UIManager
      L4_2 = L4_2.load_and_async_show
      L5_2 = "Ui.Rogue.Aeon.RogueSelectAeonPage"
      L6_2 = A0_2._data
      L6_2 = L6_2.AreaID
      L7_2 = L1_2
      L4_2(L5_2, L6_2, L7_2)
      return
    end
  end
  L4_2 = L1_1
  L5_2 = L4_2
  L4_2 = L4_2.StartRogue
  L6_2 = A0_2._data
  L6_2 = L6_2.AreaID
  L7_2 = L1_2
  L4_2(L5_2, L6_2, L7_2)
end
L0_1._start_rogue = L10_1
function L10_1(A0_2, A1_2)
  local L2_2, L3_2
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.Prefs
  L2_2 = L2_2.User
  L2_2 = L2_2.RogueEndlessLastTeam
  L3_2 = A0_2._data
  L3_2 = L3_2.AreaID
  L2_2[L3_2] = A1_2
end
L0_1._save_team_record = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.RogueEndlessLastTeam
  L3_2 = L1_2
  L2_2 = L1_2.ContainsKey
  L4_2 = A0_2._data
  L4_2 = L4_2.AreaID
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 then
    L2_2 = A0_2._data
    L2_2 = L2_2.AreaID
    L2_2 = L1_2[L2_2]
    return L2_2
  end
  L2_2 = nil
  return L2_2
end
L0_1._get_team_record = L10_1
function L10_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_select_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L10_1
function L10_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L10_1
function L10_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L10_1
return L0_1
