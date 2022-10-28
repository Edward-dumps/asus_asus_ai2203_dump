.class public Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AsusGamingVersionPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY_AERO_PREFIX:Ljava/lang/String; = "aero_"

.field private static final PROPERTY_GAMEPAD3_PREFIX:Ljava/lang/String; = "vendor.gamepad3"

.field private static final PROPERTY_GAMEPAD3_PREFIX_2:Ljava/lang/String; = "sys.gamepad3"

.field private static final PROPERTY_STATION_GENERATION:Ljava/lang/String; = "vendor.station.generation"

.field private static final TAG:Ljava/lang/String; = "AsusGamingVersionPreferenceController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/Preference;

.field public mPreferenceKey:Ljava/lang/String;

.field private mProperty:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    iput-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mPreferenceKey:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mProperty:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->updateUi(Landroidx/preference/Preference;)V

    return-void
.end method

.method private getStationDockProperty()Ljava/lang/String;
    .locals 3

    const-string v0, "AsusGamingVersionPreferenceController"

    .line 120
    iget-object p0, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->asus_gaming_unconnected:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string/jumbo v1, "vendor.station.generation"

    .line 122
    invoke-static {v1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    .line 123
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "Station 2"

    .line 124
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "vendor.station2.ec_fwver"

    .line 125
    invoke-static {v1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v2, "3"

    .line 126
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "Station 3"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "vendor.station3.ec_fwver"

    .line 128
    invoke-static {v1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    const-string v2, "0"

    .line 130
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    return-object p0

    :catch_0
    move-exception v1

    .line 133
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private updateUi(Landroidx/preference/Preference;)V
    .locals 2

    .line 102
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->asus_gaming_unconnected:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "vendor.station.generation"

    .line 104
    iget-object v1, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mProperty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->getStationDockProperty()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mProperty:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    .line 109
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p1

    :cond_1
    const-string v1, "Vff.ff.ff"

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    .line 111
    :goto_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AsusGamingVersionPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public bridge synthetic copy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->copy()V

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 61
    invoke-static {}, Lcom/android/settings/Utils;->isGamingFone()Z

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

    .line 67
    iget-object p0, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mPreferenceKey:Ljava/lang/String;

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

.method public updateState(Landroidx/preference/Preference;)V
    .locals 8

    .line 78
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->updateUi(Landroidx/preference/Preference;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mProperty:Ljava/lang/String;

    const-string/jumbo v1, "vendor.gamepad3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mProperty:Ljava/lang/String;

    const-string v1, "sys.gamepad3"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;->mPreferenceKey:Ljava/lang/String;

    const-string v1, "aero_"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController$1;

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController$1;-><init>(Lcom/android/settings/deviceinfo/AsusGamingVersionPreferenceController;JJLandroidx/preference/Preference;)V

    .line 96
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
