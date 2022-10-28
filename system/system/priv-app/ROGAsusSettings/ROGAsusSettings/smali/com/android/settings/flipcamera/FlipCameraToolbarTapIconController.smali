.class public Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FlipCameraToolbarTapIconController.java"

# interfaces
.implements Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_PREF_TOOLBAR_TAP_ICON:Ljava/lang/String; = "toolbar_tap_icon"

.field public static final TOOLBAR_MODE:Ljava/lang/String; = "flip_camera_toolbar_mode"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentMode:I

.field private mSettingObserver:Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController$SettingObserver;

.field private mToolbarEnable:I

.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "toolbar_tap_icon"

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mCurrentMode:I

    .line 54
    iput v0, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mToolbarEnable:I

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;)Lcom/android/settings/widget/VideoPreference;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "toolbar_tap_icon"

    .line 94
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/RadioButtonPreference;

    const-string v1, "toolbar_preview_video"

    .line 95
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/VideoPreference;

    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_0

    const/16 p1, 0x8

    .line 97
    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/RadioButtonPreference;->setAppendixVisibility(I)V

    .line 98
    invoke-virtual {v0, p0}, Lcom/android/settingslib/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settingslib/widget/RadioButtonPreference$OnClickListener;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 100
    iget-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mSettingObserver:Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController$SettingObserver;

    if-nez p1, :cond_1

    .line 101
    new-instance p1, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController$SettingObserver;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController$SettingObserver;-><init>(Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mSettingObserver:Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController$SettingObserver;

    :cond_1
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

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

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

.method public onRadioButtonClicked(Lcom/android/settingslib/widget/RadioButtonPreference;)V
    .locals 1

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 108
    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mContentResolver:Landroid/content/ContentResolver;

    const-string p1, "flip_camera_toolbar_mode"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1

    .line 67
    sget-object p1, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController$1;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mSettingObserver:Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController$SettingObserver;

    if-eqz p1, :cond_2

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mSettingObserver:Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController$SettingObserver;

    if-eqz p1, :cond_2

    .line 70
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 7

    .line 113
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "flip_camera_toolbar_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "flip_camera_toolbar_enable"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 118
    iget v3, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mCurrentMode:I

    if-eq v3, v0, :cond_1

    .line 119
    move-object v3, p1

    check-cast v3, Lcom/android/settingslib/widget/RadioButtonPreference;

    invoke-virtual {v3, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    if-nez v0, :cond_0

    .line 121
    invoke-virtual {v3, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 122
    iget-object v3, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    sget v5, Lcom/android/settings/R$raw;->flipcamera_toolbar_tapicon:I

    sget v6, Lcom/android/settings/R$drawable;->flipcamera_toolbar_tapicon:I

    invoke-virtual {v3, v5, v6}, Lcom/android/settings/widget/VideoPreference;->setVideo(II)V

    .line 124
    :cond_0
    iput v0, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mCurrentMode:I

    .line 126
    :cond_1
    iget v0, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mToolbarEnable:I

    if-eq v0, v1, :cond_3

    if-ne v1, v4, :cond_2

    move v2, v4

    .line 127
    :cond_2
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 128
    iput v1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarTapIconController;->mToolbarEnable:I

    :cond_3
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
