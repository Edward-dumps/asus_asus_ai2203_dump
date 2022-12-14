.class public Lcom/android/settings/display/DarkUIPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "DarkUIPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field public static final DARK_MODE_PREFS:Ljava/lang/String; = "dark_ui_mode"

.field public static final DIALOG_SEEN:I = 0x1

.field public static final PREF_DARK_MODE_DIALOG_SEEN:Ljava/lang/String; = "dark_mode_dialog_seen"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mPowerManager:Landroid/os/PowerManager;

.field mPreference:Landroidx/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mUiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    new-instance p2, Lcom/android/settings/display/DarkUIPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/DarkUIPreferenceController$1;-><init>(Lcom/android/settings/display/DarkUIPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    iput-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    .line 65
    const-class p2, Landroid/app/UiModeManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    iput-object p2, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    .line 66
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method private showDarkModeDialog()V
    .locals 2

    .line 99
    new-instance v0, Lcom/android/settings/display/DarkUIInfoDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/display/DarkUIInfoDialogFragment;-><init>()V

    .line 100
    iget-object v1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
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

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/display/AsusSystemUIThemePreferenceController;->isAsusSystemUISupport(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method isPowerSaveMode()Z
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p0

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 126
    sget-object p1, Lcom/android/settings/display/DarkUIPreferenceController$2;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance p2, Landroid/content/IntentFilter;

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dark_mode_dialog_seen"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    .line 93
    invoke-direct {p0}, Lcom/android/settings/display/DarkUIPreferenceController;->showDarkModeDialog()V

    .line 95
    :cond_1
    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mUiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0, p1}, Landroid/app/UiModeManager;->setNightModeActivated(Z)Z

    move-result p0

    return p0
.end method

.method public setParentFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method updateEnabledStateIfNeeded()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/DarkUIPreferenceController;->isPowerSaveMode()Z

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPreference:Landroidx/preference/Preference;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/display/DarkUIPreferenceController;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    sget v0, Lcom/android/settings/R$string;->dark_ui_mode_disabled_summary_dark_theme_on:I

    goto :goto_0

    .line 115
    :cond_1
    sget v0, Lcom/android/settings/R$string;->dark_ui_mode_disabled_summary_dark_theme_off:I

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/display/DarkUIPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/display/DarkUIPreferenceController;->updateEnabledStateIfNeeded()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
