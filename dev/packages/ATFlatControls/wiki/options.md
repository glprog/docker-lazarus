OptButtonLayout: string
======

String of few chars, one char is one button at left or right side. Comma separates buttons for left/right, e.g. `"<>,v+"` is 2 buttons `<`, `>` on left and 2 buttons `v`, `+` on right. If value is empty, buttons not painted at all, this gives more space for tabs for left/right OptPosition.

* `<` - scroll tabs left
* `>` - scroll tabs right
* `v` - show drop-down menu of all tabs
* `+` - plus button, does the same as plus pseudo-tab
* `x` - close button, does the same as x icon on active tab
* `0`..`4` - user buttons; they are owner drawn and handled in event OnTabClickUserButton
* `_` - space (blank separator)
* `|` - vertical separator

OptButtonSize: integer
======

Width of one button, from OptButtonLayout. Height of buttons is OptTabHeight.

OptButtonSizeSpace: integer
=====

Width of space button with caption `_`.

OptButtonSizeSeparator: integer
=====

Width of separator button with caption `|`.

OptScalePercents
=====

Scale of entire control, in percents, default is 100.

OptPosition: enum
======

One of view styles: top/bottom/left/right.
If top - control should have Align=alTop; if bottom - Align=alBottom; etc.
In left/right styles, tab text is painted horizontally anyway.

OptIconPosition: enum
======

Position of icon (from ImageList) relative to caption of tab.
You can set icon above text, icon below text, etc.

OptVarWidth: boolean
======

Allow variable width tabs. Only for top/bottom OptPosition.

OptMultiline: boolean
=======

Allow auto-sizing of control's height and multi-line mode. Only for top/bottom OptPosition.
In this mode, OptSpacer is indent from top, OptSpacer2 is indent from bottom.
Note: after you turn off this prop, you need to restore control's height.

OptFillWidth: boolean
=====

Allow tabs, when they are wrapped to several rows, to fill the entire control width, except for the last row. 

OptFillWidthLastToo: boolean
=====

Allow tabs, when they are wrapped to several rows, to fill the entire control width, for the last row.

OptTruncateCaption: enum
=====

Enum which controls how to truncate too long tab captions, on small sized tabs.

* attcNone
* attcDotsLeft
* attcDotsMiddle
* attcDotsRight

OptTabHeight: integer
======

Height of tab-rect area. Usually smaller than control height to show indents above/below tabs.

OptTabWidthNormal: integer
======

Normal width of a tab, when small count of tabs is created. Only for fixed width tabs.

OptTabWidthMinimal: integer
======

Smallest width of a tab, used when lot of tabs is created (so some tabs don't fit).

OptTabWidthMaximal: integer
======

For OptVarWidth mode, it is maximal width of tabs.

OptTabWidthMinimalHidesX: integer
======

When current tab width (for top/bottom OptPosition) becomes smaller than option, X mark hides on all tabs.

OptSpaceSide
=====

Controls shape of tab left/right side: if 0, tab side is vertical; if >0, tab side is angled and have the given horizontal width.

OptSpaceBetweenTabs: integer
======

Indent (pixels) between nearest tabs.

OptSpaceBetweenLines: integer
======

For multi-line mode, indent between horizontal tab lines.

OptSpaceBetweenIconCaption: integer
======

Indent (pixels) between icon (from ImageList) and caption. For all icon positions.

OptSpaceInitial: integer
======

Indent before first tab.
For left/right OptPosition, it's used only if OptButtonLayout is empty.

OptSpaceBeforeText: integer
======

Indent between tab caption edge and tab rect. When caption is long, indent is smaller.

OptSpaceBeforeTextForMinWidth: integer
=====

Like OptSpaceBeforeText, but for tabs of minimal width.

OptSpaceSeparator: integer
=====

Width of vertical separator lines between tabs.

OptSpacer: integer
======

Indent between tab rects and edge of control (one of edges, depends on OptPosition).

OptSpacer2: integer
======

Only for left/right OptPosition. Indent between tab rects and another side of control. For top/bottom OptPosition, such indent is auto-calculated.

OptSpaceXRight: integer
======

Indent between X icon edge and right side of tab rect.

OptSpaceXInner: integer
======

Indent between X icon edge and X lines.

OptSpaceXSize: integer
======

Size of X icon lines.

OptSpaceXIncrementRound: integer
=====

Additional size of X mark, when it has rounded shape (OptShowXRounded=True).

OptColoredBandSize: integer
======

Width of colored band, which is shown on edge (edge depends on OptPosition) of colored tab. Color is set via TATTabData field.

OptArrowSize: integer
======

Size of left/right/dropdown arrows.

OptScrollMarkSizeX: integer
======

Length of scroll mark. Mark is shown when lot of tabs created, and some tabs don't fit.

OptScrollMarkSizeY: integer
======

Width of scroll mark.

OptDropMarkSize: integer
======

Width of drag-drop mark. It is shown when you drag a tab to another pos, in the same control.

OptActiveVisibleOnResize: boolean
=====

If True, active tab will be made visible on control resizing.

OptWhichActivateOnClose: enum
=====

Controls which tab should be activated after tab closing: default, righter, recently active.

OptCaptionAlignment: TAlignment
=====

Alignment of tab caption inside wider tab.

OptShowFlat: boolean
======

Activates flat look: in this mode tab edges and bottom lines are not painted, and tabs have the same BG color as control's BG color.

OptShowFlatMouseOver: boolean
=====

In OptShowFlat mode, makes additional highlighting of tab on mouse-over.

OptShowFlatSepar: boolean
=====

In OptShowFlat mode, shows separator lines between tabs.

OptShowScrollMark: boolean
======

Allow to show scroll mark. If lot of tabs created.

OptShowDropMark: boolean
======

Allow to show drop mark. When drag-drop is active.

OptShowXRounded: boolean
=====

Show X icons as round shape, on mouse-over.

OptShowXButtons: enum
======

How to show X icons on tabs.
Several variants: show all, don't show, show for active tab, show for mouse-over tab.

OptShowPlusTab: boolean
======

Allow to show "plus" pseudo-tab. It generates event on click.

OptShowArrowsNear: boolean
======

Show left/right scroll arrows near to each other. Usually they are shown in the center of buttons, not near.

OptShowModifiedText: string
======

String to show before tab caption, for modified tab. E.g. "*". Modified: bool TATTabData field.

OptShowEntireColor: boolean
======

Allow to colorize full tab rect, for colored tabs. Color of tab: field in the TATTabData.

OptShowNumberPrefix: TATTabString
======

String with `%d`, which makes numbered prefix for all tabs. Eg, `'%d) '` makes prefix with number and bracket. If empty, no prefix used.

OptShowActiveMarkInverted: boolean
=====

In OptShowFlat mode, show active tab's mark in inverted position (left-> right, right-> left).

OptActiveFontStyle: TFontStyles
======

Font style, e.g. `[fsUnderline]`, which is used for caption of active tab.

OptActiveFontStyleUsed: boolean
=====

Enable to use OptActiveFontStyle.

OptHotFontStyle: TFontStyles
======

Font style, e.g. `[fsUnderline]`, which is used for caption of passive mouse-over tab.

OptHotFontStyleUsed: boolean
=====

Enable to use OptHotFontStyle.

OptMouseMiddleClickClose: boolean
======

Allow to close tabs by middle mouse click.

OptMouseDoubleClickClose: boolean
======

Allow to close tabs by double click.

OptMouseDoubleClickPlus: boolean
======

Allow to call OnTabPlusClick by double click on empty area.

OptMouseDragEnabled: boolean
======

Enable drag-drop of tabs.

OptMouseDragOutEnabled: boolean
======

Also enable drag-drop to/from another ATTabs control.

OptHintForXXXX: string
=====

Mouse-over hint string for various UI elements: X icon, Plus tab, arrows left/right/dropdown, user buttons 0..4.
