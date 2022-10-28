.class public Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "GloveModePreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController$ServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final FEATURE_ASUS_GLOVE:Ljava/lang/String; = "asus.hardware.glove"

.field public static final KEY_GLOVE_MODE_PREFERENCE:Ljava/lang/String; = "asus_glove_mode_setting"

.field private static final TAG:Ljava/lang/String; = "glove_mode"

.field private static mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;


# instance fields
.field private final mCr:Landroid/content/ContentResolver;

.field private mGloveModeObserver:Landroid/database/ContentObserver;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->getGloveModeService()Lvendor/ims/glovemode/V1_0/IGloveMode;

    move-result-object v0

    sput-object v0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "asus_glove_mode_setting"

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mCr:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method private static getGloveModeService()Lvendor/ims/glovemode/V1_0/IGloveMode;
    .locals 6

    const-string v0, "getGloveModeService"

    const-string v1, "glove_mode"

    const/4 v2, 0x1

    .line 143
    :try_start_0
    invoke-static {v2}, Lvendor/ims/glovemode/V1_0/IGloveMode;->getService(Z)Lvendor/ims/glovemode/V1_0/IGloveMode;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 145
    new-instance v3, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController$ServiceDeathRecipient;

    invoke-direct {v3}, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController$ServiceDeathRecipient;-><init>()V

    const-wide/16 v4, 0x0

    .line 146
    invoke-interface {v2, v3, v4, v5}, Lvendor/ims/glovemode/V1_0/IGloveMode;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 152
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v2

    .line 150
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isGloveModeAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "asus.hardware.glove"

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private onPause()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mCr:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 111
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mGloveModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 113
    :cond_0
    sget-object p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 114
    sput-object p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;

    :cond_1
    return-void
.end method

.method private onResume()V
    .locals 3

    .line 91
    sget-object v0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;

    if-nez v0, :cond_0

    .line 92
    invoke-static {}, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->getGloveModeService()Lvendor/ims/glovemode/V1_0/IGloveMode;

    move-result-object v0

    sput-object v0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mGloveModeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController$1;-><init>(Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mGloveModeObserver:Landroid/database/ContentObserver;

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mCr:Landroid/content/ContentResolver;

    const-string v1, "glove_mode"

    .line 106
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mGloveModeObserver:Landroid/database/ContentObserver;

    .line 105
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public static setGloveModeEnable(I)V
    .locals 2

    const-string v0, "glove_mode"

    .line 159
    :try_start_0
    sget-object v1, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;

    if-nez v1, :cond_0

    .line 160
    invoke-static {}, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->getGloveModeService()Lvendor/ims/glovemode/V1_0/IGloveMode;

    move-result-object v1

    sput-object v1, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;

    .line 162
    :cond_0
    sget-object v1, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;

    if-eqz v1, :cond_1

    .line 163
    invoke-interface {v1, p0}, Lvendor/ims/glovemode/V1_0/IGloveMode;->setEnable(I)V

    .line 164
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "glove status = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mGloveModeService:Lvendor/ims/glovemode/V1_0/IGloveMode;

    invoke-interface {v1}, Lvendor/ims/glovemode/V1_0/IGloveMode;->getStatus()S

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "setGloveModeEnable"

    .line 167
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->isGloveModeAvailable(Landroid/content/Context;)Z

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

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 2

    .line 125
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mCr:Landroid/content/ContentResolver;

    const-string v0, "glove_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public bridge synthetic isCopyableSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isCopyableSlice()Z

    move-result p0

    return p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 80
    sget-object p1, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController$2;->$SwitchMap$androidx$lifecycle$Lifecycle$Event:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->onResume()V

    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->onPause()V

    :goto_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 130
    iget-object p0, p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mCr:Landroid/content/ContentResolver;

    const-string v0, "glove_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    invoke-static {p1}, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->setGloveModeEnable(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/asusadvancedsettings/GloveModePreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
