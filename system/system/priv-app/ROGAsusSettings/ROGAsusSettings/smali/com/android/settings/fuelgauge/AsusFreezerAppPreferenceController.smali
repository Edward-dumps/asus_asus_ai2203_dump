.class public Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AsusFreezerAppPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mIsSupportOpAppFreezeOn:Z

.field private mOpAppFreezeOn:I

.field private mOpAppFreezeUserSet:I

.field private mTargetPackage:Ljava/lang/String;

.field private final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mIsSupportOpAppFreezeOn:Z

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mOpAppFreezeOn:I

    .line 54
    iput v0, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mOpAppFreezeUserSet:I

    const-string v1, "appops"

    .line 58
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 59
    iput p2, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mUid:I

    .line 60
    iput-object p3, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mTargetPackage:Ljava/lang/String;

    const-string p1, "OP_APP_FREEZE_ON"

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->getAppOpsManagerIntField(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mOpAppFreezeOn:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mIsSupportOpAppFreezeOn:Z

    :cond_0
    const-string p1, "OP_APP_FREEZE_USER_SET"

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->getAppOpsManagerIntField(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mOpAppFreezeUserSet:I

    return-void
.end method

.method private getAppOpsManagerIntField(Ljava/lang/String;I)I
    .locals 2

    const-string p0, "PrefControllerMixin"

    if-nez p1, :cond_0

    return p2

    .line 183
    :cond_0
    const-class v0, Landroid/app/AppOpsManager;

    .line 185
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exception, e = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :catch_1
    move-exception v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " get value fail, e = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :catch_2
    move-exception v0

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid field in class AppOpsManager, e = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private getBuildFeaturesBoolean(Ljava/lang/String;Z)Z
    .locals 3

    const-string p0, "PrefControllerMixin"

    .line 231
    :try_start_0
    const-class v0, Landroid/os/Build$FEATURES;

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get BuildFeature : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failto get BuildFeature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ,e = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p2
.end method

.method private getSettingsSystemInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 2

    const-string p0, "PrefControllerMixin"

    .line 204
    :try_start_0
    const-class v0, Landroid/provider/Settings$System;

    .line 205
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get SettingsProvider: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failto get SettingsProvider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ,e = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p3
.end method

.method private isAppOpsFreezerOn()Z
    .locals 4

    .line 170
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mIsSupportOpAppFreezeOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mOpAppFreezeOn:I

    iget v3, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mUid:I

    iget-object p0, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 172
    invoke-virtual {v0, v2, v3, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isFreezerHardCodeWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    .line 83
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 84
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-gtz v0, :cond_0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v0, 0x3e8

    if-le p1, v0, :cond_0

    const-string p1, "com.google.android"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    :cond_0
    return v1

    :catch_0
    move-exception p1

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not get freezer white list , e="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrefControllerMixin"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method private isWhiteOrBlackList()Z
    .locals 7

    .line 94
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->isFreezerHardCodeWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mTargetPackage:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 100
    :try_start_0
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "asus_freezer_app_hidden_list"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not get hidden list , e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PrefControllerMixin"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_2

    const-string v3, ","

    .line 105
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 107
    array-length v3, v0

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    .line 109
    iget-object v5, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mTargetPackage:Ljava/lang/String;

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method private setSettingsSystemInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .locals 2

    const-string p0, "PrefControllerMixin"

    .line 217
    :try_start_0
    const-class v0, Landroid/provider/Settings$System;

    .line 218
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set SettingsProvider: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 223
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failto set SettingsProvider: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ,e = "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "asus_freezer_app"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    .line 142
    instance-of v0, p1, Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 143
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "asus_freezer_app"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 147
    :cond_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    .line 148
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mIsSupportOpAppFreezeOn:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 150
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v0, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mOpAppFreezeOn:I

    iget v3, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mUid:I

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v3, v4, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v0, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mOpAppFreezeOn:I

    iget v3, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mUid:I

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v3, v4, v2}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 155
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, -0x1

    const-string v3, "ASUS_FREEZER_LAST_APP_DISABLED"

    invoke-direct {p0, p1, v3, v0}, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->setSettingsSystemInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 157
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mUid:I

    invoke-direct {p0, p1, v3, v0}, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->setSettingsSystemInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 160
    :goto_0
    iget p1, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mOpAppFreezeUserSet:I

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v3, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mUid:I

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mTargetPackage:Ljava/lang/String;

    .line 161
    invoke-virtual {v0, p1, v3, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 162
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v0, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mOpAppFreezeUserSet:I

    iget v3, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mUid:I

    iget-object p0, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v3, p0, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public isAvailable()Z
    .locals 2

    const-string v0, "ENABLE_ASUS_FREEZER"

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, v0, v1}, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->getBuildFeaturesBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->mIsSupportOpAppFreezeOn:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->isWhiteOrBlackList()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 127
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->isAppOpsFreezerOn()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ASUS_FREEZER_ENABLED"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/AsusFreezerAppPreferenceController;->getSettingsSystemInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    .line 134
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 136
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method
