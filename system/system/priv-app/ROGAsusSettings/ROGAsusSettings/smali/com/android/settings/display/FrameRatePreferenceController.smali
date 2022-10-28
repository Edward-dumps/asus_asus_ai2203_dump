.class public Lcom/android/settings/display/FrameRatePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "FrameRatePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field private final RESOLVER:Landroid/content/ContentResolver;

.field private final TAG:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mFrameRateControlModeObserver:Landroid/database/ContentObserver;

.field private mFrameRateValueObserver:Landroid/database/ContentObserver;

.field private mPreference:Landroidx/preference/Preference;

.field private final mPreferenceKey:Ljava/lang/String;

.field private mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

.field private mSystemModeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V
    .locals 3

    .line 74
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "FrameRatePreferenceController"

    .line 66
    iput-object v0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    .line 115
    new-instance v0, Lcom/android/settings/display/FrameRatePreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/FrameRatePreferenceController$1;-><init>(Lcom/android/settings/display/FrameRatePreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mConnection:Landroid/content/ServiceConnection;

    .line 176
    new-instance v0, Lcom/android/settings/display/FrameRatePreferenceController$2;

    new-instance v1, Landroid/os/Handler;

    .line 177
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/FrameRatePreferenceController$2;-><init>(Lcom/android/settings/display/FrameRatePreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mFrameRateControlModeObserver:Landroid/database/ContentObserver;

    .line 184
    new-instance v0, Lcom/android/settings/display/FrameRatePreferenceController$3;

    new-instance v1, Landroid/os/Handler;

    .line 185
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/FrameRatePreferenceController$3;-><init>(Lcom/android/settings/display/FrameRatePreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mFrameRateValueObserver:Landroid/database/ContentObserver;

    if-eqz p3, :cond_0

    .line 76
    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->RESOLVER:Landroid/content/ContentResolver;

    .line 80
    iput-object p2, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/display/FrameRatePreferenceController;Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;)Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/display/FrameRatePreferenceController;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/display/FrameRatePreferenceController;->reloadFPS()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/display/FrameRatePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method private reloadFPS()V
    .locals 9

    const-string v0, "FrameRatePreferenceController"

    .line 134
    sget-object v1, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->ALLOWED_MODES_ROG5:Ljava/util/List;

    .line 135
    invoke-static {}, Lcom/android/settings/Utils;->isTequila()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    sget-object v1, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->ALLOWED_MODES_ROG3:Ljava/util/List;

    .line 139
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    if-eqz v2, :cond_4

    .line 140
    invoke-interface {v2}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;->getCurrentMode()I

    move-result v2

    .line 141
    iget-object v3, p0, Lcom/android/settings/display/FrameRatePreferenceController;->RESOLVER:Landroid/content/ContentResolver;

    const-string v4, "frame_rate_control_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "RefreshRate"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    :try_start_1
    const-string v7, "_AUTO"

    .line 142
    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "0"

    if-nez v1, :cond_1

    .line 144
    :try_start_2
    iget-object v1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mPreference:Landroidx/preference/Preference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v3}, Lcom/android/settings/display/FrameRatePreferenceController;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->asus_system_mode_managed:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 145
    invoke-static {v3}, Lcom/android/settings/Utils;->getSystemModeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-virtual {v3, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-direct {p0, v3}, Lcom/android/settings/display/FrameRatePreferenceController;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v3}, Lcom/android/settings/analytics/Tracker;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 155
    iget-object v1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mPreference:Landroidx/preference/Preference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    invoke-interface {v4}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;->getCurrentFPS()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/display/FrameRatePreferenceController;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/settings/R$string;->asus_system_mode_managed:I

    new-array v6, v6, [Ljava/lang/Object;

    .line 156
    invoke-static {v4}, Lcom/android/settings/Utils;->getSystemModeName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    invoke-interface {v3}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;->getCurrentFPS()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/display/FrameRatePreferenceController;->setSummary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v1, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 162
    iget-object v1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    invoke-interface {v3}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;->getCurrentFPS()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v4, v3}, Lcom/android/settings/analytics/Tracker;->record(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentMode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FrameRateLayoutPreferenceController.MODE_USER: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FrameRateLayoutPreferenceController.MODE_AUTO: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentFPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    invoke-interface {p0}, Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;->getCurrentFPS()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 172
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private setSummary(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 198
    iget-object v0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mPreference:Landroidx/preference/Preference;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 200
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->loadEntries(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 201
    iget-object p0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->loadValues(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 203
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 204
    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 206
    aget-object p0, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception p0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FrameRatePreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 95
    iget-object p1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {p1, v0}, Lcom/android/settings/display/FrameRateLayoutPreferenceController;->bindFPSControlService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->RESOLVER:Landroid/content/ContentResolver;

    const-string v0, "frame_rate_control_mode"

    .line 97
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mFrameRateControlModeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    iget-object p1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->RESOLVER:Landroid/content/ContentResolver;

    const-string v0, "frame_rate_value"

    .line 101
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mFrameRateValueObserver:Landroid/database/ContentObserver;

    .line 100
    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mService:Lcom/asus/hardwarestub/centralcontrol/IFPSCentralControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->RESOLVER:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mFrameRateControlModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 111
    iget-object v0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->RESOLVER:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mFrameRateValueObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 218
    sget-object p1, Lcom/android/settings/display/FrameRatePreferenceController$5;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    iget-object p1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_2

    .line 235
    iget-object p0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 220
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "change_system_mode"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 221
    new-instance p2, Lcom/android/settings/display/FrameRatePreferenceController$4;

    invoke-direct {p2, p0}, Lcom/android/settings/display/FrameRatePreferenceController$4;-><init>(Lcom/android/settings/display/FrameRatePreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mSystemModeReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    iget-object p0, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/android/settings/display/FrameRatePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method
