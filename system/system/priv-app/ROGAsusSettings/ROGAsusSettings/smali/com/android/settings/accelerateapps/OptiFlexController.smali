.class public Lcom/android/settings/accelerateapps/OptiFlexController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "OptiFlexController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v0, Lcom/android/settings/accelerateapps/OptiFlexController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accelerateapps/OptiFlexController$1;-><init>(Lcom/android/settings/accelerateapps/OptiFlexController;)V

    iput-object v0, p0, Lcom/android/settings/accelerateapps/OptiFlexController;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/android/settings/accelerateapps/OptiFlexController;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {}, Lcom/android/settings/accelerateapps/AccelerateAppsController;->getInstance()Lcom/android/settings/accelerateapps/AccelerateAppsController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accelerateapps/OptiFlexController;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    .line 57
    invoke-static {}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->isSupportOptiFlex()Z

    move-result p0

    if-nez p0, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/settings/accelerateapps/BootCompleteReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p1, 0x2

    const/4 v1, 0x1

    .line 61
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->updateAutoModeEnabledFromPieSettings(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accelerateapps/OptiFlexController;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/accelerateapps/OptiFlexController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/accelerateapps/OptiFlexController;)Lcom/android/settings/accelerateapps/AccelerateAppsController;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/accelerateapps/OptiFlexController;->mAccelerateAppsController:Lcom/android/settings/accelerateapps/AccelerateAppsController;

    return-object p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "toggle_optiflex"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 81
    invoke-static {}, Lcom/android/settings/accelerateapps/OptiFlexUtil;->isSupportOptiFlex()Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 91
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 93
    iget-object p2, p0, Lcom/android/settings/accelerateapps/OptiFlexController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "optiflex"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    iget-object p1, p0, Lcom/android/settings/accelerateapps/OptiFlexController;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    iget-object p0, p0, Lcom/android/settings/accelerateapps/OptiFlexController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 101
    iget-object p0, p0, Lcom/android/settings/accelerateapps/OptiFlexController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "optiflex"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    .line 102
    check-cast p1, Lcom/android/settings/widget/PrimarySwitchPreference;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/PrimarySwitchPreference;->setChecked(Z)V

    return-void
.end method
