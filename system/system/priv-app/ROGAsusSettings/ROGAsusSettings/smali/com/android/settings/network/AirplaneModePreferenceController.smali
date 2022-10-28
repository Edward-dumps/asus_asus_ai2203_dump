.class public Lcom/android/settings/network/AirplaneModePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AirplaneModePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;


# static fields
.field private static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1

.field public static final SLICE_URI:Landroid/net/Uri;


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroidx/preference/SwitchPreference;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private final mHandler:Landroid/os/Handler;

.field private mIsChecked:Z

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 56
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.settings.slices"

    .line 57
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "action"

    .line 58
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "airplane_mode"

    .line 59
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/AirplaneModePreferenceController;->SLICE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mHandler:Landroid/os/Handler;

    .line 186
    new-instance p1, Lcom/android/settings/network/AirplaneModePreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/network/AirplaneModePreferenceController$1;-><init>(Lcom/android/settings/network/AirplaneModePreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mRunnable:Ljava/lang/Runnable;

    .line 73
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/network/AirplaneModePreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    new-instance p1, Lcom/android/settings/AirplaneModeEnabler;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;)V

    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/AirplaneModePreferenceController;)Lcom/android/settings/AirplaneModeEnabler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/AirplaneModePreferenceController;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mIsChecked:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/network/AirplaneModePreferenceController;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_show_toggle_airplane:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

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

.method public getSliceUri()Landroid/net/Uri;
    .locals 0

    .line 105
    sget-object p0, Lcom/android/settings/network/AirplaneModePreferenceController;->SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 89
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "airplane_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 90
    invoke-virtual {p1}, Lcom/android/settings/AirplaneModeEnabler;->isInEcmMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 92
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    .line 93
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public isPublicSlice()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    const-string p2, "exit_ecm_result"

    .line 152
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 154
    iget-object p2, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroidx/preference/SwitchPreference;

    .line 155
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    .line 154
    invoke-virtual {p2, p1, p0}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    :cond_0
    return-void
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 182
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroidx/preference/SwitchPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/network/GlobalSettingsChangeListener;->close()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->start()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->stop()V

    :cond_0
    return-void
.end method

.method setAirplaneModeEnabler(Lcom/android/settings/AirplaneModeEnabler;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mAirplaneModePreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 171
    iput-boolean p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mIsChecked:Z

    .line 172
    iget-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    iget-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mRunnable:Ljava/lang/Runnable;

    iget-boolean p0, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mIsChecked:Z

    if-eqz p0, :cond_1

    const-wide/16 v1, 0xfa

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x12c

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/settings/network/AirplaneModePreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
