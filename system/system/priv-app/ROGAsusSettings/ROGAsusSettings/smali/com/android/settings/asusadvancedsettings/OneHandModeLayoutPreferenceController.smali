.class public Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OneHandModeLayoutPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field static final KEY_ONE_HAND_MODE_LAYOUT:Ljava/lang/String; = "key_one_hand_mode_layout"

.field public static final descString:[I

.field static final rawFile:I

.field static final rawFileNotification:I

.field static final rawFileNotificationROG:I

.field static final rawFileROG:I


# instance fields
.field private mAnimationController:Lcom/android/settings/widget/MediaAnimationController;

.field private mAspectRatio:F

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mIsNotification:Z

.field private mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private mOneHandModeLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

.field private mPlayButton:Landroid/widget/ImageView;

.field private mPreviewImage:Landroid/widget/ImageView;

.field private mSelectPage:I

.field private mTextView:Landroid/widget/TextView;

.field private mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

.field private mVideo:Landroid/view/TextureView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 84
    sget v1, Lcom/android/settings/R$string;->asus_advanced_settings_onehand_page_description_4:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->descString:[I

    .line 87
    sget v0, Lcom/android/settings/R$raw;->one_hand_mode_pulldown:I

    sput v0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->rawFile:I

    .line 89
    sget v0, Lcom/android/settings/R$raw;->one_hand_mode_show_notification:I

    sput v0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->rawFileNotification:I

    .line 91
    sget v0, Lcom/android/settings/R$raw;->one_hand_mode_pulldown_rog:I

    sput v0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->rawFileROG:I

    .line 93
    sget v0, Lcom/android/settings/R$raw;->one_hand_mode_show_notification_rog:I

    sput v0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->rawFileNotificationROG:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 74
    iput p2, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mAspectRatio:F

    const/4 p2, -0x2

    .line 75
    iput p2, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mHeight:I

    const/4 p2, 0x0

    .line 81
    iput p2, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mSelectPage:I

    const/4 p2, 0x1

    .line 82
    iput-boolean p2, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mIsNotification:Z

    .line 97
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mContext:Landroid/content/Context;

    .line 98
    new-instance p2, Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-direct {p2, p1}, Lcom/android/settings/gestures/OneHandedSettingsUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    return-void
.end method

.method private initAnimationController()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mAnimationController:Lcom/android/settings/widget/MediaAnimationController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/widget/MediaAnimationController;->release()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->isSwipeDownNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    sget v1, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->rawFileNotification:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->rawFile:I

    .line 143
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isGamingFone()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->rawFileNotificationROG:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->rawFileROG:I

    :goto_1
    move v1, v0

    .line 145
    :cond_3
    new-instance v0, Lcom/android/settings/widget/MediaAnimationController;

    iget-object v2, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/settings/widget/MediaAnimationController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mAnimationController:Lcom/android/settings/widget/MediaAnimationController;

    .line 146
    iget-object v1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mVideo:Landroid/view/TextureView;

    if-eqz v1, :cond_4

    .line 147
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mPreviewImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/widget/MediaAnimationController;->attachView(Landroid/view/TextureView;Landroid/view/View;Landroid/view/View;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "key_one_hand_mode_layout"

    .line 108
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mOneHandModeLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mIsNotification:Z

    .line 112
    sget v1, Lcom/android/settings/R$id;->video_texture_view:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mVideo:Landroid/view/TextureView;

    .line 113
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mOneHandModeLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->video_preview_image:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mPreviewImage:Landroid/widget/ImageView;

    .line 114
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mOneHandModeLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->video_play_button:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mPlayButton:Landroid/widget/ImageView;

    .line 115
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mOneHandModeLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->video_preference_desc:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mTextView:Landroid/widget/TextView;

    .line 116
    sget-object v1, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->descString:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mOneHandModeLayoutPref:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->video_container:I

    invoke-virtual {p1, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    .line 121
    invoke-direct {p0}, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->initAnimationController()V

    .line 123
    iget v1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mHeight:I

    const/4 v2, -0x1

    if-lt v1, v2, :cond_0

    .line 124
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    :cond_0
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mVideo:Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->setEnabled(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x1

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

.method public onChange(Landroid/net/Uri;)V
    .locals 1

    .line 176
    sget-object v0, Lcom/android/settings/gestures/OneHandedSettingsUtils;->SHOW_NOTIFICATION_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->initAnimationController()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-virtual {v0, p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->registerToggleAwareObserver(Lcom/android/settings/gestures/OneHandedSettingsUtils$TogglesCallback;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mUtils:Lcom/android/settings/gestures/OneHandedSettingsUtils;

    invoke-virtual {p0}, Lcom/android/settings/gestures/OneHandedSettingsUtils;->unregisterToggleAwareObserver()V

    return-void
.end method

.method public releaseAnimationController()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mAnimationController:Lcom/android/settings/widget/MediaAnimationController;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/android/settings/widget/MediaAnimationController;->release()V

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mAnimationController:Lcom/android/settings/widget/MediaAnimationController;

    :cond_0
    return-void
.end method

.method public setLifecycle(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    return-void
.end method

.method updateAspectRatio()V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mAnimationController:Lcom/android/settings/widget/MediaAnimationController;

    invoke-virtual {v0}, Lcom/android/settings/widget/MediaAnimationController;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mAnimationController:Lcom/android/settings/widget/MediaAnimationController;

    .line 134
    invoke-virtual {v1}, Lcom/android/settings/widget/MediaAnimationController;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeLayoutPreferenceController;->mAspectRatio:F

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
