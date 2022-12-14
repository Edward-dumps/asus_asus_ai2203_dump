.class Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "PreventRingingParentPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/PreventRingingParentPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field private final mKeyChordVolumePowerUpUri:Landroid/net/Uri;

.field private final mPreference:Landroidx/preference/Preference;

.field private final mVolumeHushGestureUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/gestures/PreventRingingParentPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/gestures/PreventRingingParentPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;->this$0:Lcom/android/settings/gestures/PreventRingingParentPreferenceController;

    .line 182
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "volume_hush_gesture"

    .line 174
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;->mVolumeHushGestureUri:Landroid/net/Uri;

    const-string p1, "key_chord_power_volume_up"

    .line 176
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;->mKeyChordVolumePowerUpUri:Landroid/net/Uri;

    .line 183
    iput-object p2, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 197
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-eqz p2, :cond_0

    .line 198
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;->mVolumeHushGestureUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;->mKeyChordVolumePowerUpUri:Landroid/net/Uri;

    .line 199
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 200
    :cond_0
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;->this$0:Lcom/android/settings/gestures/PreventRingingParentPreferenceController;

    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/android/settings/gestures/PreventRingingParentPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;->mKeyChordVolumePowerUpUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/gestures/PreventRingingParentPreferenceController$SettingObserver;->mVolumeHushGestureUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0

    .line 192
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
