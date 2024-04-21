local L0_1, L1_1, L2_1
L0_1 = require
L1_1 = "Ui.Phone.PhoneDockPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.PhoneDockPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.PhoneDesktopPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.PhoneDesktopPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.PhoneInfoPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.PhoneInfoPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.PhoneStatusBarPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.PhoneStatusBarPanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.PhoneThemePanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.PhoneThemePanelBinder"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.PhoneEvent.PhoneEventContainerPanel"
L0_1(L1_1)
L0_1 = require
L1_1 = "Ui.Phone.PhoneEvent.PhoneEventContainerPanelBinder"
L0_1(L1_1)
L0_1 = G
L0_1 = L0_1.Class
L1_1 = "MobilePhonePageBinder"
L2_1 = G
L2_1 = L2_1.UIBinder
L0_1 = L0_1(L1_1, L2_1)
function L1_1(A0_2)
  local L1_2
  L1_2 = "UI/Adventure/MobilePhoneMainPage.prefab"
  return L1_2
end
L0_1.get_prefab_path = L1_1
function L1_1(A0_2)
  local L1_2, L2_2, L3_2, L4_2, L5_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Bg/CloseBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_root = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.Button
  L4_2 = "Content/Content/RightPlane/ClosePanel/Tab/ShutdownBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.btn_exit = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.LongPressEvent
  L4_2 = "Content/Content/RightPlane/ClosePanel/Tab/ShutdownBtn"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.long_press_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhoneInfoPanel
  L4_2 = G
  L4_2 = L4_2.PhoneInfoPanelBinder
  L5_2 = "Content/Content/LeftPlane"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_info = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhoneDesktopPanel
  L4_2 = G
  L4_2 = L4_2.PhoneDesktopPanelBinder
  L5_2 = "Content/Content/LeftPlane/AppListMask"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_desktop = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhoneStatusBarPanel
  L4_2 = G
  L4_2 = L4_2.PhoneStatusBarPanelBinder
  L5_2 = "Content/Content/LeftPlane/Tittle"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_status = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhoneDockPanel
  L4_2 = G
  L4_2 = L4_2.PhoneDockPanelBinder
  L5_2 = "Content/Content/RightPlane/ClosePanel"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_dock = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhoneThemePanel
  L4_2 = G
  L4_2 = L4_2.PhoneThemePanelBinder
  L5_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_theme = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._create_panel
  L3_2 = G
  L3_2 = L3_2.PhoneEventContainerPanel
  L4_2 = G
  L4_2 = L4_2.PhoneEventContainerPanelBinder
  L5_2 = "EventBannerContainer"
  L1_2 = L1_2(L2_2, L3_2, L4_2, L5_2)
  A0_2.panel_event = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.UnityEngine
  L3_2 = L3_2.UI
  L3_2 = L3_2.ScrollRect
  L4_2 = "Content/Content/LeftPlane/AppListMask/AppList"
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.scroll_rect = L1_2
  L2_2 = A0_2
  L1_2 = A0_2._safe_get_cmpt
  L3_2 = CS
  L3_2 = L3_2.RPG
  L3_2 = L3_2.Client
  L3_2 = L3_2.UIMeta
  L4_2 = ""
  L1_2 = L1_2(L2_2, L3_2, L4_2)
  A0_2.ui_meta = L1_2
end
L0_1._on_bind = L1_1
return L0_1
