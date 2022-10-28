.class public Lcom/android/settings/accessibility/MagnificationModePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MagnificationModePreferenceController.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/MagnificationModePreferenceController$MagnificationModeInfo;,
        Lcom/android/settings/accessibility/MagnificationModePreferenceController$DialogHelper;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final DIALOG_ID_BASE:I = 0xa

.field static final DIALOG_MAGNIFICATION_MODE:I = 0xb

.field static final DIALOG_MAGNIFICATION_SWITCH_SHORTCUT:I = 0xc

.field static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field static final PREF_KEY:Ljava/lang/String; = "screen_magnification_mode"

.field private static final TAG:Ljava/lang/String; = "MagnificationModePreferenceController"


# instance fields
.field private mDialogHelper:Lcom/android/settings/accessibility/MagnificationModePreferenceController$DialogHelper;

.field mMagnificationModesListView:Landroid/widget/ListView;

.field private mMode:I

.field private final mModeInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/accessibility/MagnificationModePreferenceController$MagnificationModeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mModePreference:Landroidx/preference/Preference;


# direct methods
.method public static synthetic $r8$lambda$-o_oWYVmKvtIDMgBL-s0JVGoG6M(Lcom/android/settings/accessibility/MagnificationModePreferenceController;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->onMagnificationModeSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$1M6Qby9TS3gzbU6AT4vBfx6MMwg(Lcom/android/settings/accessibility/MagnificationModePreferenceController;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->lambda$displayPreference$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$WhS4mR7hFmJHjpHn_4VDj53o6DY(Lcom/android/settings/accessibility/MagnificationModePreferenceController;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->onMagnificationModeDialogPositiveButtonClicked(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 75
    iput p1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMode:I

    .line 81
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mModeInfos:Ljava/util/List;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->initModeInfos()V

    return-void
.end method

.method private computeSelectionIndex()I
    .locals 5

    .line 221
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mModeInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 223
    iget-object v3, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mModeInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accessibility/MagnificationModePreferenceController$MagnificationModeInfo;

    iget v3, v3, Lcom/android/settings/accessibility/MagnificationModePreferenceController$MagnificationModeInfo;->mMagnificationMode:I

    iget v4, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMode:I

    if-ne v3, v4, :cond_0

    .line 224
    iget-object p0, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMagnificationModesListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p0

    add-int/2addr v2, p0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "MagnificationModePreferenceController"

    const-string v0, "computeSelectionIndex failed"

    .line 227
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private createMagnificationModeDialog()Landroid/app/Dialog;
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mModeInfos:Ljava/util/List;

    new-instance v2, Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/accessibility/MagnificationModePreferenceController;)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createSingleChoiceListView(Landroid/content/Context;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMagnificationModesListView:Landroid/widget/ListView;

    .line 172
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->accessibility_magnification_mode_header:I

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMagnificationModesListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMagnificationModesListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMagnificationModesListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->computeSelectionIndex()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 179
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->accessibility_magnification_mode_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMagnificationModesListView:Landroid/widget/ListView;

    new-instance v3, Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/MagnificationModePreferenceController;)V

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createCustomDialog(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/view/View;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private createMagnificationShortCutConfirmDialog()Landroid/app/Dialog;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/accessibility/MagnificationModePreferenceController;)V

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityDialogUtils;->createMagnificationSwitchShortcutDialog(Landroid/content/Context;Lcom/android/settings/accessibility/AccessibilityDialogUtils$CustomButtonsClickListener;)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private initModeInfos()V
    .locals 6

    .line 89
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mModeInfos:Ljava/util/List;

    new-instance v1, Lcom/android/settings/accessibility/MagnificationModePreferenceController$MagnificationModeInfo;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->accessibility_magnification_mode_dialog_option_full_screen:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_illustration_fullscreen:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/android/settings/accessibility/MagnificationModePreferenceController$MagnificationModeInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mModeInfos:Ljava/util/List;

    new-instance v1, Lcom/android/settings/accessibility/MagnificationModePreferenceController$MagnificationModeInfo;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->accessibility_magnification_mode_dialog_option_window:I

    .line 93
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget v3, Lcom/android/settings/R$drawable;->ic_illustration_window:I

    const/4 v5, 0x2

    invoke-direct {v1, v2, v4, v3, v5}, Lcom/android/settings/accessibility/MagnificationModePreferenceController$MagnificationModeInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mModeInfos:Ljava/util/List;

    new-instance v1, Lcom/android/settings/accessibility/MagnificationModePreferenceController$MagnificationModeInfo;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->accessibility_magnification_mode_dialog_option_switch:I

    .line 96
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->accessibility_magnification_area_settings_mode_switch_summary:I

    .line 97
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    sget v3, Lcom/android/settings/R$drawable;->ic_illustration_switch:I

    const/4 v4, 0x3

    invoke-direct {v1, v2, p0, v3, v4}, Lcom/android/settings/accessibility/MagnificationModePreferenceController$MagnificationModeInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static isTripleTapEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_display_magnification_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private synthetic lambda$displayPreference$0(Landroidx/preference/Preference;)Z
    .locals 0

    .line 125
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/accessibility/MagnificationCapabilities;->getCapabilities(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMode:I

    .line 126
    iget-object p0, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mDialogHelper:Lcom/android/settings/accessibility/MagnificationModePreferenceController$DialogHelper;

    const/16 p1, 0xb

    invoke-interface {p0, p1}, Lcom/android/settings/accessibility/MagnificationModePreferenceController$DialogHelper;->showDialog(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private onMagnificationModeDialogPositiveButtonClicked(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 188
    iget-object p1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMagnificationModesListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    .line 190
    iget-object p2, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMagnificationModesListView:Landroid/widget/ListView;

    .line 191
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/MagnificationModePreferenceController$MagnificationModeInfo;

    .line 193
    iget p1, p1, Lcom/android/settings/accessibility/MagnificationModePreferenceController$MagnificationModeInfo;->mMagnificationMode:I

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->setMode(I)V

    goto :goto_0

    :cond_0
    const-string p0, "MagnificationModePreferenceController"

    const-string p1, "invalid index"

    .line 195
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onMagnificationModeSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 208
    iget-object p1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMagnificationModesListView:Landroid/widget/ListView;

    .line 209
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/MagnificationModePreferenceController$MagnificationModeInfo;

    .line 211
    iget p1, p1, Lcom/android/settings/accessibility/MagnificationModePreferenceController$MagnificationModeInfo;->mMagnificationMode:I

    iget p2, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMode:I

    if-ne p1, p2, :cond_0

    return-void

    .line 214
    :cond_0
    iput p1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMode:I

    .line 215
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->isTripleTapEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMode:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    .line 216
    iget-object p0, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mDialogHelper:Lcom/android/settings/accessibility/MagnificationModePreferenceController$DialogHelper;

    const/16 p1, 0xc

    invoke-interface {p0, p1}, Lcom/android/settings/accessibility/MagnificationModePreferenceController$DialogHelper;->showDialog(I)V

    :cond_1
    return-void
.end method

.method private optInMagnificationToAccessibilityButton()V
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_button_targets"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.android.server.accessibility.MagnificationController"

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 263
    :cond_0
    new-instance v3, Ljava/util/StringJoiner;

    const/16 v4, 0x3a

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 265
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 266
    invoke-virtual {v3, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 268
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 270
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 271
    invoke-virtual {v3}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private optOutMagnificationFromTripleTap()V
    .locals 2

    .line 251
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accessibility_display_magnification_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setMode(I)V
    .locals 1

    .line 200
    iput p1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMode:I

    .line 201
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/accessibility/MagnificationCapabilities;->setCapabilities(Landroid/content/Context;I)V

    .line 202
    iget-object p1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mModePreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMode:I

    .line 203
    invoke-static {v0, p0}, Lcom/android/settings/accessibility/MagnificationCapabilities;->getSummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 202
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mModePreference:Landroidx/preference/Preference;

    .line 124
    new-instance v0, Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/MagnificationModePreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/accessibility/MagnificationModePreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 0

    const/16 p0, 0xb

    if-eq p1, p0, :cond_1

    const/16 p0, 0xc

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 p0, 0x739

    return p0

    :cond_1
    const/16 p0, 0x718

    return p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/accessibility/MagnificationCapabilities;->getCapabilities(Landroid/content/Context;)I

    move-result v0

    .line 110
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settings/accessibility/MagnificationCapabilities;->getSummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "mode"

    .line 116
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMode:I

    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->createMagnificationShortCutConfirmDialog()Landroid/app/Dialog;

    move-result-object p0

    return-object p0

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->createMagnificationModeDialog()Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onResume()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mModePreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 133
    iget p0, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mMode:I

    const-string v0, "mode"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method onSwitchShortcutDialogButtonClicked(I)V
    .locals 0

    .line 244
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->optOutMagnificationFromTripleTap()V

    .line 247
    invoke-direct {p0}, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->optInMagnificationToAccessibilityButton()V

    return-void
.end method

.method public setDialogHelper(Lcom/android/settings/accessibility/MagnificationModePreferenceController$DialogHelper;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settings/accessibility/MagnificationModePreferenceController;->mDialogHelper:Lcom/android/settings/accessibility/MagnificationModePreferenceController$DialogHelper;

    .line 141
    invoke-interface {p1, p0}, Lcom/android/settings/accessibility/MagnificationModePreferenceController$DialogHelper;->setDialogDelegate(Lcom/android/settings/DialogCreatable;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
