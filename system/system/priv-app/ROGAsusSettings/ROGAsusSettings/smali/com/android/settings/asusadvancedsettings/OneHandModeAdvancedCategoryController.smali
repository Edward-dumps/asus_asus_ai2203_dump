.class public Lcom/android/settings/asusadvancedsettings/OneHandModeAdvancedCategoryController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OneHandModeAdvancedCategoryController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field public static final KEY_ONE_HAND_MODE_SIDE_SETTINGS:Ljava/lang/String; = "one_hand_mode_advanced_settings"

.field private static final ONE_HAND_MODE_SIDE_SETTINGS_ACTION:Ljava/lang/String; = "com.android.intent.action.NAVIBAR_EDGE_MENU_TUNER"

.field private static final ONE_HAND_MODE_SIDE_SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.asus.systemui"

.field private static final TAG:Ljava/lang/String; = "OneHandModeAdvancedSettingsController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeAdvancedCategoryController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 49
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/OneHandModeAdvancedCategoryController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/asusadvancedsettings/OneHandModeAdvancedSettingsController;->oneHandModeAdvancedIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->canStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "one_hand_mode_advanced_settings"

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

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
