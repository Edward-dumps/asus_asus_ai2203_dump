.class public Lcom/android/settings/asusadvancedsettings/InadvertentTouchPerferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "InadvertentTouchPerferenceController.java"


# static fields
.field private static final FEATURE_ASUS:Ljava/lang/String; = "asus.software.inadvertentTouch"

.field public static final INADVERTENT_TOUCH:Ljava/lang/String; = "asus_inadvertent_touch_enable"

.field public static final KEY_INADVERTENTTOUCH_SETTING:Ljava/lang/String; = "asus_inadvertent_touch_enable"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.asus.inadvertentTouch"

.field private static final TAG:Ljava/lang/String; = "InadvertentTouchPerferenceController"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/InadvertentTouchPerferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static checkAPKExist(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 77
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.asus.inadvertentTouch"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "InadvertentTouchPerferenceController"

    const-string v2, "Inadvertent Touch Apk Not Found!"

    .line 81
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method

.method public static isInadvertentTouchSupport(Landroid/content/Context;)Z
    .locals 1

    .line 68
    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/InadvertentTouchPerferenceController;->checkAPKExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/InadvertentTouchPerferenceController;->supportInadvertentTouchFeature(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static supportInadvertentTouchFeature(Landroid/content/Context;)Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "asus.software.inadvertentTouch"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/InadvertentTouchPerferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/InadvertentTouchPerferenceController;->isInadvertentTouchSupport(Landroid/content/Context;)Z

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

    const-string p0, "asus_inadvertent_touch_enable"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 2

    .line 45
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/InadvertentTouchPerferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_inadvertent_touch_enable"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/InadvertentTouchPerferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "asus_inadvertent_touch_enable"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
