local L0_1, L1_1, L2_1, L3_1, L4_1
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryBookPageBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Activity.FantasticStoryActivity.FantasticStoryParagraphInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Common.RewardItemIconLite"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Book.BookContentInfoPanel"
L0_1(L1_1)
L0_1 = "UIText_ActivityFanaticStory_MyStory_Cover"
L1_1 = "UIText_ActivityFanaticStory_MyStory_Rewrite"
L2_1 = G
L2_1 = L2_1.Class
L3_1 = "FantasticStoryBookPage"
L4_1 = G
L4_1 = L4_1.BasePage
L2_1 = L2_1(L3_1, L4_1)
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.FantasticStoryBookPageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = tonumber
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.GameCore
  L2_2 = L2_2.ConstValueFantasticStoryExcelTable
  L2_2 = L2_2.GetData
  L3_2 = "ActivityBookID_QuestID"
  L2_2 = L2_2(L3_2)
  L2_2 = L2_2.Value
  L1_2 = L1_2(L2_2)
  A0_2._book_quest_id = L1_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.FantasicStoryBookInRewriting
  A0_2._is_rewritting = L1_2
  L1_2 = {}
  A0_2._paragraph_panels = L1_2
end
L2_1.ctor = L3_1
function L3_1(A0_2)
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
  L3_2 = L3_2.btn_get
  L4_2 = A0_2._on_btn_get
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_rewrite
  L4_2 = A0_2._on_btn_rewrite
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.QuestGetReward
  L4_2 = A0_2._on_quest_get_reward
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.OnActivityEnd
  L4_2 = L2_1._on_activity_end
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.FantasticStoryBookRewriteChange
  L4_2 = A0_2._on_fantastic_story_book_rewrite_change
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.set_exit_callback
  function L3_2()
    local L0_3, L1_3
    L0_3 = CS
    L0_3 = L0_3.RPG
    L0_3 = L0_3.Client
    L0_3 = L0_3.Prefs
    L0_3 = L0_3.User
    L0_3.FantasticStoryBookNewParagraph = false
  end
  L4_2 = A0_2
  L1_2(L2_2, L3_2, L4_2)
  L1_2 = A0_2._binder
  L1_2 = L1_2.reward_grid_view
  L2_2 = L1_2
  L1_2 = L1_2.SafeInitGridView
  L3_2 = 0
  L4_2 = A0_2._on_reward_change
  L5_2 = nil
  L6_2 = nil
  L7_2 = A0_2
  L1_2(L2_2, L3_2, L4_2, L5_2, L6_2, L7_2)
end
L2_1._on_load = L3_1
function L3_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_title
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_paragraph
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_reward
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_recieve_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_rewrite_state
  L1_2(L2_2)
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.CoroutineUtils
  L1_2 = L1_2.InvokeNextFrame
  function L2_2()
    local L0_3, L1_3, L2_3, L3_3, L4_3
    L0_3 = A0_2._binder
    L0_3 = L0_3.scroll_rect
    L1_3 = L0_3
    L0_3 = L0_3.CanScroll
    L0_3 = L0_3(L1_3)
    if L0_3 then
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.create_short_cut_hint_panel
      L2_3 = {}
      L3_3 = "ActionGroup_Scroll"
      L4_3 = "ActionGroup_Return"
      L2_3[1] = L3_3
      L2_3[2] = L4_3
      L0_3(L1_3, L2_3)
    else
      L0_3 = A0_2
      L1_3 = L0_3
      L0_3 = L0_3.create_short_cut_hint_panel
      L2_3 = 1
      L0_3(L1_3, L2_3)
    end
  end
  L1_2(L2_2)
end
L2_1._setup_view = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2.instantiate_object
  L3_2 = A0_2._binder
  L3_2 = L3_2.book_content_component
  L3_2 = L3_2.BookContentPrefabList
  L3_2 = L3_2[0]
  L3_2 = L3_2.Prefab
  L4_2 = A0_2._binder
  L4_2 = L4_2.book_content_component
  L4_2 = L4_2.transform
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2.create_panel
  L4_2 = G
  L4_2 = L4_2.BookContentInfoPanel
  L5_2 = G
  L5_2 = L5_2.BookContentInfoPanelBinder
  L2_2 = L2_2(L3_2, L4_2, L5_2)
  A0_2._title_panel = L2_2
  L2_2 = A0_2._title_panel
  L3_2 = L2_2
  L2_2 = L2_2.bind
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_title_text
  L2_2(L3_2)
end
L2_1._setup_title = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._title_panel
  L2_2 = L1_2
  L1_2 = L1_2.setup_title
  L3_2 = A0_2._is_rewritting
  if L3_2 == 1 then
    L3_2 = "UIText_ActivityFanaticStory_MyStory_RewriteEnd"
    if L3_2 then
      goto lbl_10
    end
  end
  L3_2 = "UIText_ActivityFanaticStory_MyStory"
  ::lbl_10::
  L1_2(L2_2, L3_2)
end
L2_1._setup_title_text = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.FantasticStoryActivityModule
  L2_2 = L1_2
  L1_2 = L1_2.GetSortedParagraphData
  L1_2 = L1_2(L2_2)
  A0_2._paragraph_data_list = L1_2
  L1_2 = 0
  L2_2 = A0_2._paragraph_data_list
  L2_2 = L2_2.Count
  L2_2 = L2_2 - 1
  L3_2 = 1
  for L4_2 = L1_2, L2_2, L3_2 do
    L6_2 = A0_2
    L5_2 = A0_2.instantiate_object
    L7_2 = A0_2._binder
    L7_2 = L7_2.book_content_component
    L7_2 = L7_2.BookContentPrefabList
    L7_2 = L7_2[1]
    L7_2 = L7_2.Prefab
    L8_2 = A0_2._binder
    L8_2 = L8_2.book_content_component
    L8_2 = L8_2.transform
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L7_2 = A0_2
    L6_2 = A0_2.create_panel
    L8_2 = G
    L8_2 = L8_2.FantasticStoryParagraphInfoPanel
    L9_2 = G
    L9_2 = L9_2.FantasticStoryParagraphInfoPanelBinder
    L6_2 = L6_2(L7_2, L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.bind
    L9_2 = L5_2
    L7_2(L8_2, L9_2)
    L8_2 = L6_2
    L7_2 = L6_2.setup_view
    L9_2 = A0_2._paragraph_data_list
    L9_2 = L9_2[L4_2]
    L7_2(L8_2, L9_2)
    L7_2 = table
    L7_2 = L7_2.insert
    L8_2 = A0_2._paragraph_panels
    L9_2 = L6_2
    L7_2(L8_2, L9_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._refresh_paragraph_state
  L1_2(L2_2)
end
L2_1._setup_paragraph = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2, L7_2, L8_2
  L1_2 = pairs
  L2_2 = A0_2._paragraph_panels
  L1_2, L2_2, L3_2 = L1_2(L2_2)
  for L4_2, L5_2 in L1_2, L2_2, L3_2 do
    L7_2 = L5_2
    L6_2 = L5_2.set_active
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.Prefs
    L8_2 = L8_2.User
    L8_2 = L8_2.FantasicStoryBookInRewriting
    L8_2 = CS
    L8_2 = L8_2.RPG
    L8_2 = L8_2.Client
    L8_2 = L8_2.Prefs
    L8_2 = L8_2.User
    L8_2 = L8_2 ~= 1 or L8_2
    L6_2(L7_2, L8_2)
  end
end
L2_1._refresh_paragraph_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.QuestModule
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._book_quest_id
  L1_2 = L1_2(L2_2, L3_2)
  L2_2 = L1_2 ~= nil
  L3_2 = A0_2._binder
  L3_2 = L3_2.node_rewrite
  L4_2 = L3_2
  L3_2 = L3_2.SafeSetActive
  L5_2 = L2_2
  L3_2(L4_2, L5_2)
  if L2_2 then
    L3_2 = A0_2._is_rewritting
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.Prefs
    L3_2 = L3_2.User
    L3_2 = L3_2.FantasicStoryBookRewriten
    L3_2 = L3_2 == 1 and L3_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.text_btn_rewrite
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetTextID
    L6_2 = A0_2._is_rewritting
    if L6_2 == 1 then
      L6_2 = L0_1
      if L6_2 then
        goto lbl_50
      end
    end
    L6_2 = L1_1
    ::lbl_50::
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_rewrite
    L5_2 = not L3_2
    L4_2.interactable = L5_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_rewriting
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
  end
end
L2_1._setup_rewrite_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.GameCore
  L1_2 = L1_2.QuestDataExcelTable
  L1_2 = L1_2.GetData
  L2_2 = A0_2._book_quest_id
  L1_2 = L1_2(L2_2)
  L2_2 = L1_2.RewardID
  A0_2._reward_id = L2_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.CreateConfigIDList
  L3_2 = A0_2._reward_id
  L2_2 = L2_2(L3_2)
  A0_2._config_ids = L2_2
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_grid_view
  L3_2 = L2_2
  L2_2 = L2_2.SetListItemCount
  L4_2 = A0_2._config_ids
  L4_2 = #L4_2
  L5_2 = true
  L2_2(L3_2, L4_2, L5_2)
  L2_2 = A0_2._binder
  L2_2 = L2_2.reward_grid_view
  L3_2 = L2_2
  L2_2 = L2_2.RefreshAllShownItem
  L2_2(L3_2)
end
L2_1._refresh_reward = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2, L6_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.GlobalVars
  L1_2 = L1_2.s_ModuleManager
  L1_2 = L1_2.QuestModule
  L2_2 = L1_2
  L1_2 = L1_2.TryGetQuestData
  L3_2 = A0_2._book_quest_id
  L1_2 = L1_2(L2_2, L3_2)
  if L1_2 ~= nil then
    L2_2 = L1_2.Status
    L3_2 = CS
    L3_2 = L3_2.LEOGBBOPKKO
    L3_2 = L3_2.JKFPIINHGPD
    L2_2 = L2_2 == L3_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.btn_get
    L3_2.interactable = L2_2
    L3_2 = A0_2._binder
    L3_2 = L3_2.mono_in_control_tip_btn_get
    L3_2.IsShowTip = L2_2
    L3_2 = L1_2.Status
    L4_2 = CS
    L4_2 = L4_2.LEOGBBOPKKO
    L4_2 = L4_2.CMOFEAFMGAK
    L3_2 = L3_2 == L4_2
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_inprogress
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = not L2_2 and L6_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.node_finish
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L3_2
    L4_2(L5_2, L6_2)
    L4_2 = A0_2._binder
    L4_2 = L4_2.btn_get
    L5_2 = L4_2
    L4_2 = L4_2.SafeSetActive
    L6_2 = L2_2
    L4_2(L5_2, L6_2)
  end
end
L2_1._refresh_recieve_state = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
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
  L3_2 = L1_2
  L2_2 = L1_2.Add
  L4_2 = A0_2._book_quest_id
  L2_2(L3_2, L4_2)
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_NetworkManager
  L3_2 = L2_2
  L2_2 = L2_2.JCCHEMBPEEE
  L4_2 = L1_2
  L2_2(L3_2, L4_2)
end
L2_1._on_btn_get = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = A0_2._binder
  if L2_2 == nil then
    return
  end
  L2_2 = CS
  L2_2 = L2_2.RPG
  L2_2 = L2_2.Client
  L2_2 = L2_2.GlobalVars
  L2_2 = L2_2.s_ModuleManager
  L2_2 = L2_2.ActivityModule
  L3_2 = L2_2
  L2_2 = L2_2.GetFantasticStoryActivityData
  L2_2 = L2_2(L3_2)
  if L2_2 ~= nil then
    L3_2 = L2_2.PanelID
    if A1_2 ~= L3_2 then
      goto lbl_20
    end
  end
  L4_2 = A0_2
  L3_2 = A0_2.exit
  L3_2(L4_2)
  ::lbl_20::
end
L2_1._on_activity_end = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2
  L2_2 = G
  L2_2 = L2_2.RewardUtils
  L2_2 = L2_2.show_reward_dialog
  L3_2 = G
  L3_2 = L3_2.Utils
  L3_2 = L3_2.create_lua_table_from_cs_list
  L4_2 = A1_2
  L3_2, L4_2 = L3_2(L4_2)
  L2_2(L3_2, L4_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_recieve_state
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._refresh_reward
  L2_2(L3_2)
  L3_2 = A0_2
  L2_2 = A0_2._setup_rewrite_state
  L2_2(L3_2)
end
L2_1._on_quest_get_reward = L3_1
function L3_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2, L7_2, L8_2, L9_2, L10_2
  L4_2 = A1_2
  L3_2 = A1_2.NewListViewItem
  L5_2 = 0
  L3_2 = L3_2(L4_2, L5_2)
  L4_2 = L3_2.UserObjectData
  if L4_2 == nil then
    L6_2 = A0_2
    L5_2 = A0_2.create_panel
    L7_2 = G
    L7_2 = L7_2.RewardItemIconLite
    L8_2 = G
    L8_2 = L8_2.RewardItemIconLiteBinder
    L5_2 = L5_2(L6_2, L7_2, L8_2)
    L4_2 = L5_2
    L6_2 = L4_2
    L5_2 = L4_2.bind
    L7_2 = L3_2.transform
    L5_2(L6_2, L7_2)
    L3_2.UserObjectData = L4_2
  end
  L6_2 = L4_2
  L5_2 = L4_2.setup_view
  L7_2 = A0_2._config_ids
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2(L6_2, L7_2)
  L5_2 = G
  L5_2 = L5_2.RewardUtils
  L5_2 = L5_2.get_item_count
  L6_2 = A0_2._reward_id
  L7_2 = A0_2._config_ids
  L8_2 = A2_2 + 1
  L7_2 = L7_2[L8_2]
  L5_2 = L5_2(L6_2, L7_2)
  L7_2 = L4_2
  L6_2 = L4_2.set_count
  L8_2 = L5_2
  L6_2(L7_2, L8_2)
  L6_2 = CS
  L6_2 = L6_2.RPG
  L6_2 = L6_2.Client
  L6_2 = L6_2.GlobalVars
  L6_2 = L6_2.s_ModuleManager
  L6_2 = L6_2.QuestModule
  L7_2 = L6_2
  L6_2 = L6_2.TryGetQuestData
  L8_2 = A0_2._book_quest_id
  L6_2 = L6_2(L7_2, L8_2)
  if L6_2 ~= nil then
    L8_2 = L4_2
    L7_2 = L4_2.update_lock_mark
    L9_2 = L6_2.Status
    L10_2 = CS
    L10_2 = L10_2.LEOGBBOPKKO
    L10_2 = L10_2.CMOFEAFMGAK
    L9_2 = L9_2 ~= L10_2
    L7_2(L8_2, L9_2)
    L8_2 = L4_2
    L7_2 = L4_2.set_attachment_getted
    L9_2 = L6_2.Status
    L10_2 = CS
    L10_2 = L10_2.LEOGBBOPKKO
    L10_2 = L10_2.CMOFEAFMGAK
    L9_2 = L9_2 == L10_2
    L7_2(L8_2, L9_2)
  end
  return L3_2
end
L2_1._on_reward_change = L3_1
function L3_1(A0_2, A1_2)
  local L2_2, L3_2
  if A1_2 == "Menu_UnchangeLeftStickButton" then
    L3_2 = A0_2
    L2_2 = A0_2._on_left_stick_button_click
    L2_2(L3_2)
  end
end
L2_1._on_in_control_action_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = A0_2._config_ids
  L1_2 = #L1_2
  if 0 < L1_2 then
    L2_2 = A0_2
    L1_2 = A0_2.is_active
    L1_2 = L1_2(L2_2)
    if L1_2 then
      L1_2 = {}
      L2_2 = A0_2._config_ids
      L1_2.items = L2_2
      L2_2 = G
      L2_2 = L2_2.InventoryUtils
      L2_2 = L2_2.show_item_detail_display_dialog_for_gamepad
      L3_2 = L1_2
      L2_2(L3_2)
    end
  end
end
L2_1._on_left_stick_button_click = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = A0_2._is_rewritting
  if L1_2 == 1 then
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowOkCancelHint
    L2_2 = "UIText_ActivityFanaticStory_MyStory_Cover_Dialog"
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      if A0_3 then
        L1_3 = CS
        L1_3 = L1_3.RPG
        L1_3 = L1_3.Client
        L1_3 = L1_3.GlobalVars
        L1_3 = L1_3.s_ModuleManager
        L1_3 = L1_3.FantasticStoryActivityModule
        L2_3 = L1_3
        L1_3 = L1_3.CopyBookTextJoin
        L3_3 = false
        L4_3 = 1
        L1_3(L2_3, L3_3, L4_3)
      end
    end
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = CS
    L1_2 = L1_2.RPG
    L1_2 = L1_2.Client
    L1_2 = L1_2.ConfirmDialogUtil
    L1_2 = L1_2.ShowOkCancelHint
    L2_2 = "UIText_ActivityFanaticStory_MyStory_Rewrite_Dialog"
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.TextID
    L3_2 = L3_2.empty
    function L4_2(A0_3)
      local L1_3, L2_3, L3_3, L4_3
      if A0_3 then
        L1_3 = CS
        L1_3 = L1_3.RPG
        L1_3 = L1_3.Client
        L1_3 = L1_3.GlobalVars
        L1_3 = L1_3.s_ModuleManager
        L1_3 = L1_3.FantasticStoryActivityModule
        L2_3 = L1_3
        L1_3 = L1_3.CopyBookTextJoin
        L3_3 = true
        L4_3 = 1
        L1_3(L2_3, L3_3, L4_3)
      end
    end
    L1_2(L2_2, L3_2, L4_2)
  end
end
L2_1._on_btn_rewrite = L3_1
function L3_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L1_2 = CS
  L1_2 = L1_2.RPG
  L1_2 = L1_2.Client
  L1_2 = L1_2.Prefs
  L1_2 = L1_2.User
  L1_2 = L1_2.FantasicStoryBookInRewriting
  A0_2._is_rewritting = L1_2
  L1_2 = A0_2._is_rewritting
  if L1_2 == 1 then
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Common.Toast.PileToastCenterDialog"
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = "UIText_ActivityFanaticStory_MyStory_Rewriting"
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  else
    L1_2 = G
    L1_2 = L1_2.UIManager
    L1_2 = L1_2.load_and_async_show
    L2_2 = "Ui.Common.Toast.PileToastCenterDialog"
    L3_2 = G
    L3_2 = L3_2.TextmapStatic
    L3_2 = L3_2.GetText
    L4_2 = "UIText_ActivityFanaticStory_MyStory_CoverEnd"
    L3_2, L4_2 = L3_2(L4_2)
    L1_2(L2_2, L3_2, L4_2)
  end
  L2_2 = A0_2
  L1_2 = A0_2._setup_rewrite_state
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_title_text
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._refresh_paragraph_state
  L1_2(L2_2)
end
L2_1._on_fantastic_story_book_rewrite_change = L3_1
return L2_1
