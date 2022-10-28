.class public Lcom/android/settings/asusadvancedsettings/SmartVolumeController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SmartVolumeController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v0, Lcom/android/settings/asusadvancedsettings/SmartVolumeController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/asusadvancedsettings/SmartVolumeController$2;-><init>(Lcom/android/settings/asusadvancedsettings/SmartVolumeController;)V

    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 48
    sput-object p1, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/asusadvancedsettings/SmartVolumeController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public static canStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x1

    .line 81
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private static isSmartVolumeFeatureSupported()Z
    .locals 6

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.SHOW_SMART_VOLUME_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ro.product.first_api_level"

    const/4 v2, -0x1

    .line 65
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "persist.product.first_api_level"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x1b

    if-le v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 66
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSmartVolumeFeatureSupported(): bFirstAPILevelMoreThan27 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", canStartActivity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->canStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SmartVolumeController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-object v4, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->canStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    if-eqz v1, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    const-string v0, "persist.product.first_api_level"

    const-string v1, "ro.product.first_api_level"

    const/4 v2, -0x1

    .line 132
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x1c

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 133
    :goto_0
    sget-object v1, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->smart_volume:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    new-instance v4, Landroid/app/AlertDialog$Builder;

    sget-object v5, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    .line 136
    sget-object v0, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->adaptive_ring_volume:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    :cond_1
    sget-object v0, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/android/settings/R$string;->smart_ringtone_dialog_title:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const p1, 0x104000a

    .line 140
    new-instance v0, Lcom/android/settings/asusadvancedsettings/SmartVolumeController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/asusadvancedsettings/SmartVolumeController$1;-><init>(Lcom/android/settings/asusadvancedsettings/SmartVolumeController;)V

    invoke-virtual {v4, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mDialog:Landroid/app/AlertDialog;

    .line 145
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 146
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "toggle_smart_volume"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 53
    invoke-static {}, Lcom/android/settings/Utils;->isPicaso()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 56
    :cond_0
    invoke-static {}, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->isSmartVolumeFeatureSupported()Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 91
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "ro.product.first_api_level"

    const/4 v0, -0x1

    .line 92
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "persist.product.first_api_level"

    invoke-static {v0, p2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    const/16 v1, 0x1c

    if-le p2, v1, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 93
    :goto_0
    sget-object v1, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pref_smart_volume_type"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isAPILevelMoreThan29()Z

    move-result v1

    const-string v2, "SmartRingTone"

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    const-string v5, "persist.radio.asus.smvolstatus"

    .line 95
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v1, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object v3, v4

    :goto_2
    invoke-static {v1, v2, v3}, Lcom/android/settings/analytics/Tracker;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    if-eqz p1, :cond_4

    move-object v1, v3

    goto :goto_3

    :cond_4
    move-object v1, v4

    :goto_3
    const-string v5, "persist.vendor.asus.smvolstatus"

    .line 98
    invoke-static {v5, v1}, Lcom/android/settings/AsusTelephonyUtils;->setVendorSystemPropertie(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object v3, v4

    :goto_4
    invoke-static {v1, v2, v3}, Lcom/android/settings/analytics/Tracker;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    if-eqz p1, :cond_7

    if-eqz p2, :cond_6

    .line 103
    sget-object p1, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->smart_ringtone_description:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->showDialog(Ljava/lang/String;)V

    goto :goto_6

    .line 105
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/settings/R$string;->smart_volume_dialog_string:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/android/settings/R$string;->smart_volume_feature_dialog_notify:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->showDialog(Ljava/lang/String;)V

    :cond_7
    :goto_6
    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 115
    invoke-static {}, Lcom/android/settings/AsusTelephonyUtils;->isAPILevelMoreThan29()Z

    move-result p0

    const-string v0, "SmartRingTone"

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string p0, "persist.radio.asus.smvolstatus"

    .line 116
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 117
    sget-object v2, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p0}, Lcom/android/settings/analytics/Tracker;->record(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p0, "persist.vendor.asus.smvolstatus"

    .line 119
    invoke-static {p0, v1}, Lcom/android/settings/AsusTelephonyUtils;->getVendorSystemPropertieInt(Ljava/lang/String;I)I

    move-result p0

    .line 120
    sget-object v2, Lcom/android/settings/asusadvancedsettings/SmartVolumeController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, p0}, Lcom/android/settings/analytics/Tracker;->record(Landroid/content/Context;Ljava/lang/String;I)V

    .line 122
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/PrimarySwitchPreference;

    const/4 v2, 0x1

    if-ne p0, v2, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/PrimarySwitchPreference;->setChecked(Z)V

    const/4 p0, -0x1

    const-string v0, "ro.product.first_api_level"

    .line 123
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "persist.product.first_api_level"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x1c

    if-le p0, v0, :cond_2

    move v1, v2

    .line 124
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSmartVolumeFeatureSupported(): bFirstAPILevelMoreThan28 = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SmartVolumeController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    .line 126
    sget p0, Lcom/android/settings/R$string;->adaptive_ring_volume:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 127
    sget p0, Lcom/android/settings/R$string;->smart_ringtone_description:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_3
    return-void
.end method
