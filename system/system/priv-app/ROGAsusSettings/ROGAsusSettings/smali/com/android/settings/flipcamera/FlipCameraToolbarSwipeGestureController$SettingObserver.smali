.class public Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "FlipCameraToolbarSwipeGestureController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingObserver"
.end annotation


# instance fields
.field private final KEY_TOOLBAR_MODE_URI:Landroid/net/Uri;

.field private final KEY_TOOLBAR_SWITCH_URI:Landroid/net/Uri;

.field private final mPreference:Landroidx/preference/Preference;

.field final synthetic this$0:Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController;


# direct methods
.method public constructor <init>(Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController;Landroidx/preference/Preference;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController$SettingObserver;->this$0:Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController;

    .line 144
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "flip_camera_toolbar_mode"

    .line 137
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController$SettingObserver;->KEY_TOOLBAR_MODE_URI:Landroid/net/Uri;

    const-string p1, "flip_camera_toolbar_enable"

    .line 139
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController$SettingObserver;->KEY_TOOLBAR_SWITCH_URI:Landroid/net/Uri;

    .line 145
    iput-object p2, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 159
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 160
    iget-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController$SettingObserver;->KEY_TOOLBAR_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController$SettingObserver;->KEY_TOOLBAR_SWITCH_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController$SettingObserver;->this$0:Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController;

    iget-object p0, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 150
    iget-object p2, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController$SettingObserver;->KEY_TOOLBAR_MODE_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 151
    iget-object p2, p0, Lcom/android/settings/flipcamera/FlipCameraToolbarSwipeGestureController$SettingObserver;->KEY_TOOLBAR_SWITCH_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
