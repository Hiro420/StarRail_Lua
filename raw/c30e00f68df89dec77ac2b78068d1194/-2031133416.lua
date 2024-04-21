local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Archive.ArchiveEntrancePageBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "ArchiveEntrancePage"
L2_1 = G
L2_1 = L2_1.UIController
L0_1 = L0_1(L1_1, L2_1)
L1_1 = CS
L1_1 = L1_1.RPG
L1_1 = L1_1.Client
L1_1 = L1_1.GlobalVars
L1_1 = L1_1.s_ModuleManager
L1_1 = L1_1.ArchiveModule
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.CS_RPG_Client_UILayer_Page
  A0_2._ui_layer = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_binder
  L3_2 = G
  L3_2 = L3_2.ArchiveEntrancePageBinder
  L1_2 = L1_2(L2_2, L3_2)
  A0_2._binder = L1_2
  A0_2._pause_game = true
  L1_2 = G
  L1_2 = L1_2.ImportCsToLua
  L1_2 = L1_2.TransitionStyle_AboveAndBelowBlack
  A0_2._transition_style = L1_2
  L1_2 = {}
  L2_2 = NavigationZoneType
  L2_2 = L2_2.Zone1
  L1_2[1] = L2_2
  A0_2.listen_zooms = L1_2
end
L0_1.ctor = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._add_notify_handler
  L3_2 = G
  L3_2 = L3_2.CS
  L3_2 = L3_2.NotifyType
  L3_2 = L3_2.ArchiveDataUpdated
  L4_2 = A0_2._on_data_updated
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._bind_btn_callback
  L3_2 = A0_2._binder
  L3_2 = L3_2.btn_close
  L4_2 = A0_2._on_btn_exit
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2.create_short_cut_hint_panel
  L3_2 = 31
  L1_2(L2_2, L3_2)
  L1_2 = L1_1
  L2_2 = L1_2
  L1_2 = L1_2.RefreshArchiveData
  L1_2(L2_2)
end
L0_1._on_load = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
  L2_2 = A0_2
  L1_2 = A0_2._init_ui_navigation
  L1_2(L2_2)
end
L0_1._setup_view = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_archive_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_btn_archive_lightcone
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ArchiveType
  L4_2 = L4_2.LightCone
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_archive_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_btn_archive_relic
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ArchiveType
  L4_2 = L4_2.Relic
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_archive_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_btn_archive_avatar
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ArchiveType
  L4_2 = L4_2.Avatar
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_archive_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_btn_archive_monster
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ArchiveType
  L4_2 = L4_2.Monster
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_archive_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_btn_archive_terms
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ArchiveType
  L4_2 = L4_2.ProperNoun
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_archive_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_btn_archive_aeons
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ArchiveType
  L4_2 = L4_2.Aeons
  L1_2(L2_2, L3_2, L4_2)
  L2_2 = A0_2
  L1_2 = A0_2._setup_btn_archive_panel
  L3_2 = A0_2._binder
  L3_2 = L3_2.panel_btn_archive_factions
  L4_2 = CS
  L4_2 = L4_2.RPG
  L4_2 = L4_2.Client
  L4_2 = L4_2.ArchiveType
  L4_2 = L4_2.Factions
  L1_2(L2_2, L3_2, L4_2)
end
L0_1._refresh = L2_1
function L2_1(A0_2, A1_2, A2_2)
  local L3_2, L4_2, L5_2, L6_2
  L4_2 = A1_2
  L3_2 = A1_2.setup_view
  L5_2 = A2_2
  L3_2(L4_2, L5_2)
  L4_2 = A1_2
  L3_2 = A1_2.register_click_callback
  L5_2 = A0_2._on_btn_archive_click
  L6_2 = A0_2
  L3_2(L4_2, L5_2, L6_2)
end
L0_1._setup_btn_archive_panel = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2._refresh
  L1_2(L2_2)
end
L0_1._on_data_updated = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L2_2 = A0_2
  L1_2 = A0_2.exit
  L1_2(L2_2)
end
L0_1._on_btn_exit = L2_1
function L2_1(A0_2, A1_2)
  local L2_2, L3_2, L4_2, L5_2
  L2_2 = L1_1
  L3_2 = L2_2
  L2_2 = L2_2.GetArchiveDataByType
  L4_2 = A1_2
  L2_2 = L2_2(L3_2, L4_2)
  if L2_2 == nil then
    return
  end
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.ArchiveType
  L3_2 = L3_2.LightCone
  if A1_2 == L3_2 then
    L3_2 = G
    L3_2 = L3_2.UIManager
    L3_2 = L3_2.load_and_async_show
    L4_2 = "Ui.Archive.LightConeArchive.LightConeArchivePage"
    L5_2 = L2_2
    L3_2(L4_2, L5_2)
  else
    L3_2 = CS
    L3_2 = L3_2.RPG
    L3_2 = L3_2.Client
    L3_2 = L3_2.ArchiveType
    L3_2 = L3_2.Relic
    if A1_2 == L3_2 then
      L3_2 = G
      L3_2 = L3_2.UIManager
      L3_2 = L3_2.load_and_async_show
      L4_2 = "Ui.Archive.RelicArchive.RelicArchivePage"
      L5_2 = L2_2
      L3_2(L4_2, L5_2)
    else
      L3_2 = CS
      L3_2 = L3_2.RPG
      L3_2 = L3_2.Client
      L3_2 = L3_2.ArchiveType
      L3_2 = L3_2.Avatar
      if A1_2 == L3_2 then
        L3_2 = G
        L3_2 = L3_2.UIManager
        L3_2 = L3_2.load_and_async_show
        L4_2 = "Ui.Archive.AvatarArchive.AvatarArchivePage"
        L5_2 = L2_2
        L3_2(L4_2, L5_2)
      else
        L3_2 = CS
        L3_2 = L3_2.RPG
        L3_2 = L3_2.Client
        L3_2 = L3_2.ArchiveType
        L3_2 = L3_2.Monster
        if A1_2 == L3_2 then
          L3_2 = G
          L3_2 = L3_2.UIManager
          L3_2 = L3_2.load_and_async_show
          L4_2 = "Ui.Archive.MonsterArchive.MonsterArchivePage"
          L5_2 = L2_2
          L3_2(L4_2, L5_2)
        else
          L3_2 = G
          L3_2 = L3_2.UIManager
          L3_2 = L3_2.load_and_async_show
          L4_2 = "Ui.Archive.NounArchive.NounArchivePage"
          L5_2 = L2_2
          L3_2(L4_2, L5_2)
        end
      end
    end
  end
end
L0_1._on_btn_archive_click = L2_1
function L2_1(A0_2, A1_2)
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
L0_1._on_enter_zoom = L2_1
function L2_1(A0_2)
  local L1_2, L2_2
  L1_2 = A0_2._binder
  L1_2 = L1_2.panel_btn_archive_avatar
  L2_2 = L1_2
  L1_2 = L1_2.get_first_selected_object
  return L1_2(L2_2)
end
L0_1.get_first_selected_object = L2_1
function L2_1(A0_2)
  local L1_2, L2_2, L3_2
  L2_2 = A0_2
  L1_2 = A0_2._on_enter_zoom
  L3_2 = NavigationZoneType
  L3_2 = L3_2.Zone1
  L1_2(L2_2, L3_2)
end
L0_1._init_ui_navigation = L2_1
return L0_1
